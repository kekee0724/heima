package cn.bipark.reco.upms.web.webapi;

import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.web.api.BaseController;
import cn.bipark.reco.core.web.api.Mark;
import cn.bipark.reco.upms.model.query.QuestionLevelQuery;
import cn.bipark.reco.upms.model.viewmodel.list.QuestionLevelListVM;
import cn.bipark.reco.upms.model.viewmodel.form.QuestionLevelFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.QuestionLevelDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.QuestionLevelImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.QuestionLevelExportVM;
import cn.bipark.reco.upms.web.service.QuestionLevelAppService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;


import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.web.api.BaseController;
import cn.bipark.reco.core.web.api.Mark;
import cn.bipark.reco.upms.model.query.QuestionLevelQuery;
import cn.bipark.reco.upms.model.viewmodel.detail.QuestionLevelDetailVM;
import cn.bipark.reco.upms.model.viewmodel.form.QuestionLevelFormVM;
import cn.bipark.reco.upms.model.viewmodel.list.QuestionLevelListVM;
import cn.bipark.reco.upms.model.viewmodel.other.QuestionLevelExportVM;
import cn.bipark.reco.upms.model.viewmodel.other.QuestionLevelImportVM;
import cn.bipark.reco.upms.web.service.QuestionLevelAppService;
import cn.bipark.reco.office.driver.poi.utils.EasyExcelUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

//TODO 开发时为接口测试方便使用此注解避免被security拦截，同理，写接口的权限检查默认也被注释。下述条件注解被注释。
@PreAuthorize("permitAll()")
@RestController("upms.questionlevel")
@RequestMapping("/upms/question-level")
@Api(tags = "题目等级管理")
@Mark(QuestionLevelFormVM.class)
// @ConditionalOnProperty(prefix = "reco.platform.webapi", name = "enabled", havingValue = "true")
public class QuestionLevelController extends BaseController {

    @ApiOperation(value = "题目等级-获取详情")
    @GetMapping("{id}")
    public QuestionLevelDetailVM get(@PathVariable Long id) {
        return resolve(QuestionLevelAppService.class).get(id);
    }

    @ApiOperation(value = "题目等级-分页查询")
    @GetMapping()
    public PagedList<QuestionLevelListVM> getPaged(QuestionLevelQuery query) {
        return resolve(QuestionLevelAppService.class).getPaged(query);
    }

    @ApiOperation(value = "题目等级-查询数量")
    @GetMapping("count")
    public long count(QuestionLevelQuery query) {
        return resolve(QuestionLevelAppService.class).count(query);
    }

    @ApiOperation(value = "题目等级-查询全部")
    @GetMapping("list")
    public List<QuestionLevelListVM> getList(QuestionLevelQuery query) {
        return resolve(QuestionLevelAppService.class).getAll(query);
    }

//    @PreAuthorize("hasAuthority('QUESTION_LEVEL_DEL')")
//    @PostAuthorize("appLog('UPMS', '删除题目等级', '编号%d', #id)")
    @ApiOperation(value = "题目等级-删除")
    @DeleteMapping("{id}")
    public boolean delete(@PathVariable Long id) {
        return resolve(QuestionLevelAppService.class).delete(id);
    }

//    @PreAuthorize("hasAuthority('QUESTION_LEVEL_DEL')")
//    @PostAuthorize("appLog('UPMS', '批量删除题目等级', '编号%s', #ids)")
    @ApiOperation(value = "题目等级-批量删除")
    @PutMapping("batch-delete")
    public int batchDelete(@RequestBody Long[] ids) {
        return resolve(QuestionLevelAppService.class).batchDelete(ids);
    }

//    @PreAuthorize("hasAuthority('QUESTION_LEVEL_ADD')")
//    @PostAuthorize("appLog('UPMS', '添加题目等级', '%s，编号%d', #vm.toString(), returnObject)")
    @ApiOperation(value = "题目等级-添加")
    @PostMapping()
    public Long post(@Valid @RequestBody QuestionLevelFormVM vm) {
        return resolve(QuestionLevelAppService.class).post(vm);
    }

//    @PreAuthorize("hasAuthority('QUESTION_LEVEL_EDIT')")
//    @PostAuthorize("appLog('UPMS', '修改题目等级', '%s，编号%d', #vm.toString(), #id)")
    @ApiOperation(value = "题目等级-修改")
    @PutMapping("{id}")
    public boolean put(@PathVariable Long id, @Valid @RequestBody QuestionLevelFormVM vm) {
        return resolve(QuestionLevelAppService.class).put(vm, id);
    }

    @ApiOperation(value = "题目等级-导入Excel")
    @PostMapping("import")
    public boolean importExcel(@RequestParam("file") MultipartFile file) {
        List<QuestionLevelImportVM> list = EasyExcelUtil.importExcel(file, QuestionLevelImportVM.class);
        return resolve(QuestionLevelAppService.class).importList(list);
    }

    @ApiOperation(value = "题目等级-下载Excel导入模板")
    @GetMapping("excel")
    public void excelTemplate(HttpServletResponse response) throws Exception {
        String filename = "题目等级表-导入模板.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<QuestionLevelImportVM> list = new ArrayList<>();
        list.add(new QuestionLevelImportVM());
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

    @ApiOperation(value = "题目等级-导出Excel")
    @GetMapping("export")
    public void exportExcel(HttpServletResponse response, QuestionLevelQuery query) throws Exception {
        String filename = "题目等级表.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<QuestionLevelExportVM> list = resolve(QuestionLevelAppService.class).export(query);
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

}
