package cn.bipark.reco.upms.web.webapi;

import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.web.api.BaseController;
import cn.bipark.reco.core.web.api.Mark;
import cn.bipark.reco.upms.model.query.UserPositionQuery;
import cn.bipark.reco.upms.model.viewmodel.list.UserPositionListVM;
import cn.bipark.reco.upms.model.viewmodel.form.UserPositionFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.UserPositionDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserPositionImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserPositionExportVM;
import cn.bipark.reco.upms.web.service.UserPositionAppService;
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
import cn.bipark.reco.upms.model.query.UserPositionQuery;
import cn.bipark.reco.upms.model.viewmodel.detail.UserPositionDetailVM;
import cn.bipark.reco.upms.model.viewmodel.form.UserPositionFormVM;
import cn.bipark.reco.upms.model.viewmodel.list.UserPositionListVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserPositionExportVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserPositionImportVM;
import cn.bipark.reco.upms.web.service.UserPositionAppService;
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
@RestController("upms.userposition")
@RequestMapping("/upms/user-position")
@Api(tags = "用户定位管理")
@Mark(UserPositionFormVM.class)
// @ConditionalOnProperty(prefix = "reco.platform.webapi", name = "enabled", havingValue = "true")
public class UserPositionController extends BaseController {

    @ApiOperation(value = "用户定位-获取详情")
    @GetMapping("{id}")
    public UserPositionDetailVM get(@PathVariable Long id) {
        return resolve(UserPositionAppService.class).get(id);
    }

    @ApiOperation(value = "用户定位-分页查询")
    @GetMapping()
    public PagedList<UserPositionListVM> getPaged(UserPositionQuery query) {
        return resolve(UserPositionAppService.class).getPaged(query);
    }

    @ApiOperation(value = "用户定位-查询数量")
    @GetMapping("count")
    public long count(UserPositionQuery query) {
        return resolve(UserPositionAppService.class).count(query);
    }

    @ApiOperation(value = "用户定位-查询全部")
    @GetMapping("list")
    public List<UserPositionListVM> getList(UserPositionQuery query) {
        return resolve(UserPositionAppService.class).getAll(query);
    }

//    @PreAuthorize("hasAuthority('USER_POSITION_DEL')")
//    @PostAuthorize("appLog('UPMS', '删除用户定位', '编号%d', #id)")
    @ApiOperation(value = "用户定位-删除")
    @DeleteMapping("{id}")
    public boolean delete(@PathVariable Long id) {
        return resolve(UserPositionAppService.class).delete(id);
    }

//    @PreAuthorize("hasAuthority('USER_POSITION_DEL')")
//    @PostAuthorize("appLog('UPMS', '批量删除用户定位', '编号%s', #ids)")
    @ApiOperation(value = "用户定位-批量删除")
    @PutMapping("batch-delete")
    public int batchDelete(@RequestBody Long[] ids) {
        return resolve(UserPositionAppService.class).batchDelete(ids);
    }

//    @PreAuthorize("hasAuthority('USER_POSITION_ADD')")
//    @PostAuthorize("appLog('UPMS', '添加用户定位', '%s，编号%d', #vm.toString(), returnObject)")
    @ApiOperation(value = "用户定位-添加")
    @PostMapping()
    public Long post(@Valid @RequestBody UserPositionFormVM vm) {
        return resolve(UserPositionAppService.class).post(vm);
    }

//    @PreAuthorize("hasAuthority('USER_POSITION_EDIT')")
//    @PostAuthorize("appLog('UPMS', '修改用户定位', '%s，编号%d', #vm.toString(), #id)")
    @ApiOperation(value = "用户定位-修改")
    @PutMapping("{id}")
    public boolean put(@PathVariable Long id, @Valid @RequestBody UserPositionFormVM vm) {
        return resolve(UserPositionAppService.class).put(vm, id);
    }

    @ApiOperation(value = "用户定位-导入Excel")
    @PostMapping("import")
    public boolean importExcel(@RequestParam("file") MultipartFile file) {
        List<UserPositionImportVM> list = EasyExcelUtil.importExcel(file, UserPositionImportVM.class);
        return resolve(UserPositionAppService.class).importList(list);
    }

    @ApiOperation(value = "用户定位-下载Excel导入模板")
    @GetMapping("excel")
    public void excelTemplate(HttpServletResponse response) throws Exception {
        String filename = "用户定位表-导入模板.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<UserPositionImportVM> list = new ArrayList<>();
        list.add(new UserPositionImportVM());
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

    @ApiOperation(value = "用户定位-导出Excel")
    @GetMapping("export")
    public void exportExcel(HttpServletResponse response, UserPositionQuery query) throws Exception {
        String filename = "用户定位表.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<UserPositionExportVM> list = resolve(UserPositionAppService.class).export(query);
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

}
