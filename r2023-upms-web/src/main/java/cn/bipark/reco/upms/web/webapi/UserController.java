package cn.bipark.reco.upms.web.webapi;

import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.web.api.BaseController;
import cn.bipark.reco.core.web.api.Mark;
import cn.bipark.reco.upms.model.query.UserQuery;
import cn.bipark.reco.upms.model.viewmodel.list.UserListVM;
import cn.bipark.reco.upms.model.viewmodel.form.UserFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.UserDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserExportVM;
import cn.bipark.reco.upms.web.service.UserAppService;
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
import cn.bipark.reco.upms.model.query.UserQuery;
import cn.bipark.reco.upms.model.viewmodel.detail.UserDetailVM;
import cn.bipark.reco.upms.model.viewmodel.form.UserFormVM;
import cn.bipark.reco.upms.model.viewmodel.list.UserListVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserExportVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserImportVM;
import cn.bipark.reco.upms.web.service.UserAppService;
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
@RestController("upms.user")
@RequestMapping("/upms/user")
@Api(tags = "用户管理")
@Mark(UserFormVM.class)
// @ConditionalOnProperty(prefix = "reco.platform.webapi", name = "enabled", havingValue = "true")
public class UserController extends BaseController {

    @ApiOperation(value = "用户-获取详情")
    @GetMapping("{id}")
    public UserDetailVM get(@PathVariable Long id) {
        return resolve(UserAppService.class).get(id);
    }

    @ApiOperation(value = "用户-分页查询")
    @GetMapping()
    public PagedList<UserListVM> getPaged(UserQuery query) {
        return resolve(UserAppService.class).getPaged(query);
    }

    @ApiOperation(value = "用户-查询数量")
    @GetMapping("count")
    public long count(UserQuery query) {
        return resolve(UserAppService.class).count(query);
    }

    @ApiOperation(value = "用户-查询全部")
    @GetMapping("list")
    public List<UserListVM> getList(UserQuery query) {
        return resolve(UserAppService.class).getAll(query);
    }

//    @PreAuthorize("hasAuthority('USER_DEL')")
//    @PostAuthorize("appLog('UPMS', '删除用户', '编号%d', #id)")
    @ApiOperation(value = "用户-删除")
    @DeleteMapping("{id}")
    public boolean delete(@PathVariable Long id) {
        return resolve(UserAppService.class).delete(id);
    }

//    @PreAuthorize("hasAuthority('USER_DEL')")
//    @PostAuthorize("appLog('UPMS', '批量删除用户', '编号%s', #ids)")
    @ApiOperation(value = "用户-批量删除")
    @PutMapping("batch-delete")
    public int batchDelete(@RequestBody Long[] ids) {
        return resolve(UserAppService.class).batchDelete(ids);
    }

//    @PreAuthorize("hasAuthority('USER_ADD')")
//    @PostAuthorize("appLog('UPMS', '添加用户', '%s，编号%d', #vm.toString(), returnObject)")
    @ApiOperation(value = "用户-添加")
    @PostMapping()
    public Long post(@Valid @RequestBody UserFormVM vm) {
        return resolve(UserAppService.class).post(vm);
    }

//    @PreAuthorize("hasAuthority('USER_EDIT')")
//    @PostAuthorize("appLog('UPMS', '修改用户', '%s，编号%d', #vm.toString(), #id)")
    @ApiOperation(value = "用户-修改")
    @PutMapping("{id}")
    public boolean put(@PathVariable Long id, @Valid @RequestBody UserFormVM vm) {
        return resolve(UserAppService.class).put(vm, id);
    }

    @ApiOperation(value = "用户-导入Excel")
    @PostMapping("import")
    public boolean importExcel(@RequestParam("file") MultipartFile file) {
        List<UserImportVM> list = EasyExcelUtil.importExcel(file, UserImportVM.class);
        return resolve(UserAppService.class).importList(list);
    }

    @ApiOperation(value = "用户-下载Excel导入模板")
    @GetMapping("excel")
    public void excelTemplate(HttpServletResponse response) throws Exception {
        String filename = "用户表-导入模板.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<UserImportVM> list = new ArrayList<>();
        list.add(new UserImportVM());
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

    @ApiOperation(value = "用户-导出Excel")
    @GetMapping("export")
    public void exportExcel(HttpServletResponse response, UserQuery query) throws Exception {
        String filename = "用户表.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<UserExportVM> list = resolve(UserAppService.class).export(query);
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

}
