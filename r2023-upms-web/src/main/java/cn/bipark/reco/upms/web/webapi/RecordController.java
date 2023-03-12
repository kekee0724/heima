package cn.bipark.reco.upms.web.webapi;

import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.web.api.BaseController;
import cn.bipark.reco.core.web.api.Mark;
import cn.bipark.reco.upms.model.query.RecordQuery;
import cn.bipark.reco.upms.model.viewmodel.list.RecordListVM;
import cn.bipark.reco.upms.model.viewmodel.form.RecordFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.RecordDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.RecordImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.RecordExportVM;
import cn.bipark.reco.upms.web.service.RecordAppService;
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
import cn.bipark.reco.upms.model.query.RecordQuery;
import cn.bipark.reco.upms.model.viewmodel.detail.RecordDetailVM;
import cn.bipark.reco.upms.model.viewmodel.form.RecordFormVM;
import cn.bipark.reco.upms.model.viewmodel.list.RecordListVM;
import cn.bipark.reco.upms.model.viewmodel.other.RecordExportVM;
import cn.bipark.reco.upms.model.viewmodel.other.RecordImportVM;
import cn.bipark.reco.upms.web.service.RecordAppService;
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
@RestController("upms.record")
@RequestMapping("/upms/record")
@Api(tags = "答题记录管理")
@Mark(RecordFormVM.class)
// @ConditionalOnProperty(prefix = "reco.platform.webapi", name = "enabled", havingValue = "true")
public class RecordController extends BaseController {

    @ApiOperation(value = "答题记录-获取详情")
    @GetMapping("{id}")
    public RecordDetailVM get(@PathVariable Long id) {
        return resolve(RecordAppService.class).get(id);
    }

    @ApiOperation(value = "答题记录-分页查询")
    @GetMapping()
    public PagedList<RecordListVM> getPaged(RecordQuery query) {
        return resolve(RecordAppService.class).getPaged(query);
    }

    @ApiOperation(value = "答题记录-查询数量")
    @GetMapping("count")
    public long count(RecordQuery query) {
        return resolve(RecordAppService.class).count(query);
    }

    @ApiOperation(value = "答题记录-查询全部")
    @GetMapping("list")
    public List<RecordListVM> getList(RecordQuery query) {
        return resolve(RecordAppService.class).getAll(query);
    }

//    @PreAuthorize("hasAuthority('RECORD_DEL')")
//    @PostAuthorize("appLog('UPMS', '删除答题记录', '编号%d', #id)")
    @ApiOperation(value = "答题记录-删除")
    @DeleteMapping("{id}")
    public boolean delete(@PathVariable Long id) {
        return resolve(RecordAppService.class).delete(id);
    }

//    @PreAuthorize("hasAuthority('RECORD_DEL')")
//    @PostAuthorize("appLog('UPMS', '批量删除答题记录', '编号%s', #ids)")
    @ApiOperation(value = "答题记录-批量删除")
    @PutMapping("batch-delete")
    public int batchDelete(@RequestBody Long[] ids) {
        return resolve(RecordAppService.class).batchDelete(ids);
    }

//    @PreAuthorize("hasAuthority('RECORD_ADD')")
//    @PostAuthorize("appLog('UPMS', '添加答题记录', '%s，编号%d', #vm.toString(), returnObject)")
    @ApiOperation(value = "答题记录-添加")
    @PostMapping()
    public Long post(@Valid @RequestBody RecordFormVM vm) {
        return resolve(RecordAppService.class).post(vm);
    }

//    @PreAuthorize("hasAuthority('RECORD_EDIT')")
//    @PostAuthorize("appLog('UPMS', '修改答题记录', '%s，编号%d', #vm.toString(), #id)")
    @ApiOperation(value = "答题记录-修改")
    @PutMapping("{id}")
    public boolean put(@PathVariable Long id, @Valid @RequestBody RecordFormVM vm) {
        return resolve(RecordAppService.class).put(vm, id);
    }

    @ApiOperation(value = "答题记录-导入Excel")
    @PostMapping("import")
    public boolean importExcel(@RequestParam("file") MultipartFile file) {
        List<RecordImportVM> list = EasyExcelUtil.importExcel(file, RecordImportVM.class);
        return resolve(RecordAppService.class).importList(list);
    }

    @ApiOperation(value = "答题记录-下载Excel导入模板")
    @GetMapping("excel")
    public void excelTemplate(HttpServletResponse response) throws Exception {
        String filename = "答题记录表-导入模板.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<RecordImportVM> list = new ArrayList<>();
        list.add(new RecordImportVM());
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

    @ApiOperation(value = "答题记录-导出Excel")
    @GetMapping("export")
    public void exportExcel(HttpServletResponse response, RecordQuery query) throws Exception {
        String filename = "答题记录表.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<RecordExportVM> list = resolve(RecordAppService.class).export(query);
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

}
