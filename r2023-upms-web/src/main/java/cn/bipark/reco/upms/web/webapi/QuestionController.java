package cn.bipark.reco.upms.web.webapi;

import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.web.api.BaseController;
import cn.bipark.reco.core.web.api.Mark;
import cn.bipark.reco.upms.model.query.QuestionQuery;
import cn.bipark.reco.upms.model.viewmodel.list.QuestionListVM;
import cn.bipark.reco.upms.model.viewmodel.form.QuestionFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.QuestionDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.QuestionImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.QuestionExportVM;
import cn.bipark.reco.upms.web.service.QuestionAppService;
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
import cn.bipark.reco.upms.model.query.QuestionQuery;
import cn.bipark.reco.upms.model.viewmodel.detail.QuestionDetailVM;
import cn.bipark.reco.upms.model.viewmodel.form.QuestionFormVM;
import cn.bipark.reco.upms.model.viewmodel.list.QuestionListVM;
import cn.bipark.reco.upms.model.viewmodel.other.QuestionExportVM;
import cn.bipark.reco.upms.model.viewmodel.other.QuestionImportVM;
import cn.bipark.reco.upms.web.service.QuestionAppService;
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
@RestController("upms.question")
@RequestMapping("/upms/question")
@Api(tags = "未知对象管理")
@Mark(QuestionFormVM.class)
// @ConditionalOnProperty(prefix = "reco.platform.webapi", name = "enabled", havingValue = "true")
public class QuestionController extends BaseController {

    @ApiOperation(value = "未知对象-获取详情")
    @GetMapping("{id}")
    public QuestionDetailVM get(@PathVariable Long id) {
        return resolve(QuestionAppService.class).get(id);
    }

    @ApiOperation(value = "未知对象-分页查询")
    @GetMapping()
    public PagedList<QuestionListVM> getPaged(QuestionQuery query) {
        return resolve(QuestionAppService.class).getPaged(query);
    }

    @ApiOperation(value = "未知对象-查询数量")
    @GetMapping("count")
    public long count(QuestionQuery query) {
        return resolve(QuestionAppService.class).count(query);
    }

    @ApiOperation(value = "未知对象-查询全部")
    @GetMapping("list")
    public List<QuestionListVM> getList(QuestionQuery query) {
        return resolve(QuestionAppService.class).getAll(query);
    }

//    @PreAuthorize("hasAuthority('QUESTION_DEL')")
//    @PostAuthorize("appLog('UPMS', '删除未知对象', '编号%d', #id)")
    @ApiOperation(value = "未知对象-删除")
    @DeleteMapping("{id}")
    public boolean delete(@PathVariable Long id) {
        return resolve(QuestionAppService.class).delete(id);
    }

//    @PreAuthorize("hasAuthority('QUESTION_DEL')")
//    @PostAuthorize("appLog('UPMS', '批量删除未知对象', '编号%s', #ids)")
    @ApiOperation(value = "未知对象-批量删除")
    @PutMapping("batch-delete")
    public int batchDelete(@RequestBody Long[] ids) {
        return resolve(QuestionAppService.class).batchDelete(ids);
    }

//    @PreAuthorize("hasAuthority('QUESTION_ADD')")
//    @PostAuthorize("appLog('UPMS', '添加未知对象', '%s，编号%d', #vm.toString(), returnObject)")
    @ApiOperation(value = "未知对象-添加")
    @PostMapping()
    public Long post(@Valid @RequestBody QuestionFormVM vm) {
        return resolve(QuestionAppService.class).post(vm);
    }

//    @PreAuthorize("hasAuthority('QUESTION_EDIT')")
//    @PostAuthorize("appLog('UPMS', '修改未知对象', '%s，编号%d', #vm.toString(), #id)")
    @ApiOperation(value = "未知对象-修改")
    @PutMapping("{id}")
    public boolean put(@PathVariable Long id, @Valid @RequestBody QuestionFormVM vm) {
        return resolve(QuestionAppService.class).put(vm, id);
    }

    @ApiOperation(value = "未知对象-导入Excel")
    @PostMapping("import")
    public boolean importExcel(@RequestParam("file") MultipartFile file) {
        List<QuestionImportVM> list = EasyExcelUtil.importExcel(file, QuestionImportVM.class);
        return resolve(QuestionAppService.class).importList(list);
    }

    @ApiOperation(value = "未知对象-下载Excel导入模板")
    @GetMapping("excel")
    public void excelTemplate(HttpServletResponse response) throws Exception {
        String filename = "未知对象表-导入模板.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<QuestionImportVM> list = new ArrayList<>();
        list.add(new QuestionImportVM());
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

    @ApiOperation(value = "未知对象-导出Excel")
    @GetMapping("export")
    public void exportExcel(HttpServletResponse response, QuestionQuery query) throws Exception {
        String filename = "未知对象表.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<QuestionExportVM> list = resolve(QuestionAppService.class).export(query);
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

}
