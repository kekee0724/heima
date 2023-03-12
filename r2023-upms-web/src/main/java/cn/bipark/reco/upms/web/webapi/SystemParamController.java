package cn.bipark.reco.upms.web.webapi;

import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.web.api.BaseController;
import cn.bipark.reco.core.web.api.Mark;
import cn.bipark.reco.upms.model.query.SystemParamQuery;
import cn.bipark.reco.upms.model.viewmodel.list.SystemParamListVM;
import cn.bipark.reco.upms.model.viewmodel.form.SystemParamFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.SystemParamDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.SystemParamImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.SystemParamExportVM;
import cn.bipark.reco.upms.web.service.SystemParamAppService;
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
import cn.bipark.reco.upms.model.query.SystemParamQuery;
import cn.bipark.reco.upms.model.viewmodel.detail.SystemParamDetailVM;
import cn.bipark.reco.upms.model.viewmodel.form.SystemParamFormVM;
import cn.bipark.reco.upms.model.viewmodel.list.SystemParamListVM;
import cn.bipark.reco.upms.model.viewmodel.other.SystemParamExportVM;
import cn.bipark.reco.upms.model.viewmodel.other.SystemParamImportVM;
import cn.bipark.reco.upms.web.service.SystemParamAppService;
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
@RestController("upms.systemparam")
@RequestMapping("/upms/system-param")
@Api(tags = "系统参数管理")
@Mark(SystemParamFormVM.class)
// @ConditionalOnProperty(prefix = "reco.platform.webapi", name = "enabled", havingValue = "true")
public class SystemParamController extends BaseController {

    @ApiOperation(value = "系统参数-获取详情")
    @GetMapping("{id}")
    public SystemParamDetailVM get(@PathVariable Long id) {
        return resolve(SystemParamAppService.class).get(id);
    }

    @ApiOperation(value = "系统参数-分页查询")
    @GetMapping()
    public PagedList<SystemParamListVM> getPaged(SystemParamQuery query) {
        return resolve(SystemParamAppService.class).getPaged(query);
    }

    @ApiOperation(value = "系统参数-查询数量")
    @GetMapping("count")
    public long count(SystemParamQuery query) {
        return resolve(SystemParamAppService.class).count(query);
    }

    @ApiOperation(value = "系统参数-查询全部")
    @GetMapping("list")
    public List<SystemParamListVM> getList(SystemParamQuery query) {
        return resolve(SystemParamAppService.class).getAll(query);
    }

//    @PreAuthorize("hasAuthority('SYSTEM_PARAM_DEL')")
//    @PostAuthorize("appLog('UPMS', '删除系统参数', '编号%d', #id)")
    @ApiOperation(value = "系统参数-删除")
    @DeleteMapping("{id}")
    public boolean delete(@PathVariable Long id) {
        return resolve(SystemParamAppService.class).delete(id);
    }

//    @PreAuthorize("hasAuthority('SYSTEM_PARAM_DEL')")
//    @PostAuthorize("appLog('UPMS', '批量删除系统参数', '编号%s', #ids)")
    @ApiOperation(value = "系统参数-批量删除")
    @PutMapping("batch-delete")
    public int batchDelete(@RequestBody Long[] ids) {
        return resolve(SystemParamAppService.class).batchDelete(ids);
    }

//    @PreAuthorize("hasAuthority('SYSTEM_PARAM_ADD')")
//    @PostAuthorize("appLog('UPMS', '添加系统参数', '%s，编号%d', #vm.toString(), returnObject)")
    @ApiOperation(value = "系统参数-添加")
    @PostMapping()
    public Long post(@Valid @RequestBody SystemParamFormVM vm) {
        return resolve(SystemParamAppService.class).post(vm);
    }

//    @PreAuthorize("hasAuthority('SYSTEM_PARAM_EDIT')")
//    @PostAuthorize("appLog('UPMS', '修改系统参数', '%s，编号%d', #vm.toString(), #id)")
    @ApiOperation(value = "系统参数-修改")
    @PutMapping("{id}")
    public boolean put(@PathVariable Long id, @Valid @RequestBody SystemParamFormVM vm) {
        return resolve(SystemParamAppService.class).put(vm, id);
    }

    @ApiOperation(value = "系统参数-导入Excel")
    @PostMapping("import")
    public boolean importExcel(@RequestParam("file") MultipartFile file) {
        List<SystemParamImportVM> list = EasyExcelUtil.importExcel(file, SystemParamImportVM.class);
        return resolve(SystemParamAppService.class).importList(list);
    }

    @ApiOperation(value = "系统参数-下载Excel导入模板")
    @GetMapping("excel")
    public void excelTemplate(HttpServletResponse response) throws Exception {
        String filename = "系统参数表-导入模板.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<SystemParamImportVM> list = new ArrayList<>();
        list.add(new SystemParamImportVM());
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

    @ApiOperation(value = "系统参数-导出Excel")
    @GetMapping("export")
    public void exportExcel(HttpServletResponse response, SystemParamQuery query) throws Exception {
        String filename = "系统参数表.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<SystemParamExportVM> list = resolve(SystemParamAppService.class).export(query);
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

}
