package cn.bipark.reco.upms.web.webapi;

import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.web.api.BaseController;
import cn.bipark.reco.core.web.api.Mark;
import cn.bipark.reco.upms.model.query.LevelQuery;
import cn.bipark.reco.upms.model.viewmodel.list.LevelListVM;
import cn.bipark.reco.upms.model.viewmodel.form.LevelFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.LevelDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.LevelImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.LevelExportVM;
import cn.bipark.reco.upms.web.service.LevelAppService;
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
import cn.bipark.reco.upms.model.query.LevelQuery;
import cn.bipark.reco.upms.model.viewmodel.detail.LevelDetailVM;
import cn.bipark.reco.upms.model.viewmodel.form.LevelFormVM;
import cn.bipark.reco.upms.model.viewmodel.list.LevelListVM;
import cn.bipark.reco.upms.model.viewmodel.other.LevelExportVM;
import cn.bipark.reco.upms.model.viewmodel.other.LevelImportVM;
import cn.bipark.reco.upms.web.service.LevelAppService;
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
@RestController("upms.level")
@RequestMapping("/upms/level")
@Api(tags = "等级管理")
@Mark(LevelFormVM.class)
// @ConditionalOnProperty(prefix = "reco.platform.webapi", name = "enabled", havingValue = "true")
public class LevelController extends BaseController {

    @ApiOperation(value = "等级-获取详情")
    @GetMapping("{id}")
    public LevelDetailVM get(@PathVariable Long id) {
        return resolve(LevelAppService.class).get(id);
    }

    @ApiOperation(value = "等级-分页查询")
    @GetMapping()
    public PagedList<LevelListVM> getPaged(LevelQuery query) {
        return resolve(LevelAppService.class).getPaged(query);
    }

    @ApiOperation(value = "等级-查询数量")
    @GetMapping("count")
    public long count(LevelQuery query) {
        return resolve(LevelAppService.class).count(query);
    }

    @ApiOperation(value = "等级-查询全部")
    @GetMapping("list")
    public List<LevelListVM> getList(LevelQuery query) {
        return resolve(LevelAppService.class).getAll(query);
    }

//    @PreAuthorize("hasAuthority('LEVEL_DEL')")
//    @PostAuthorize("appLog('UPMS', '删除等级', '编号%d', #id)")
    @ApiOperation(value = "等级-删除")
    @DeleteMapping("{id}")
    public boolean delete(@PathVariable Long id) {
        return resolve(LevelAppService.class).delete(id);
    }

//    @PreAuthorize("hasAuthority('LEVEL_DEL')")
//    @PostAuthorize("appLog('UPMS', '批量删除等级', '编号%s', #ids)")
    @ApiOperation(value = "等级-批量删除")
    @PutMapping("batch-delete")
    public int batchDelete(@RequestBody Long[] ids) {
        return resolve(LevelAppService.class).batchDelete(ids);
    }

//    @PreAuthorize("hasAuthority('LEVEL_ADD')")
//    @PostAuthorize("appLog('UPMS', '添加等级', '%s，编号%d', #vm.toString(), returnObject)")
    @ApiOperation(value = "等级-添加")
    @PostMapping()
    public Long post(@Valid @RequestBody LevelFormVM vm) {
        return resolve(LevelAppService.class).post(vm);
    }

//    @PreAuthorize("hasAuthority('LEVEL_EDIT')")
//    @PostAuthorize("appLog('UPMS', '修改等级', '%s，编号%d', #vm.toString(), #id)")
    @ApiOperation(value = "等级-修改")
    @PutMapping("{id}")
    public boolean put(@PathVariable Long id, @Valid @RequestBody LevelFormVM vm) {
        return resolve(LevelAppService.class).put(vm, id);
    }

    @ApiOperation(value = "等级-导入Excel")
    @PostMapping("import")
    public boolean importExcel(@RequestParam("file") MultipartFile file) {
        List<LevelImportVM> list = EasyExcelUtil.importExcel(file, LevelImportVM.class);
        return resolve(LevelAppService.class).importList(list);
    }

    @ApiOperation(value = "等级-下载Excel导入模板")
    @GetMapping("excel")
    public void excelTemplate(HttpServletResponse response) throws Exception {
        String filename = "等级表-导入模板.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<LevelImportVM> list = new ArrayList<>();
        list.add(new LevelImportVM());
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

    @ApiOperation(value = "等级-导出Excel")
    @GetMapping("export")
    public void exportExcel(HttpServletResponse response, LevelQuery query) throws Exception {
        String filename = "等级表.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<LevelExportVM> list = resolve(LevelAppService.class).export(query);
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

}
