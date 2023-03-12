package cn.bipark.reco.upms.web.webapi;

import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.web.api.BaseController;
import cn.bipark.reco.core.web.api.Mark;
import cn.bipark.reco.upms.model.query.UserLevelQuery;
import cn.bipark.reco.upms.model.viewmodel.list.UserLevelListVM;
import cn.bipark.reco.upms.model.viewmodel.form.UserLevelFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.UserLevelDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserLevelImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserLevelExportVM;
import cn.bipark.reco.upms.web.service.UserLevelAppService;
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
import cn.bipark.reco.upms.model.query.UserLevelQuery;
import cn.bipark.reco.upms.model.viewmodel.detail.UserLevelDetailVM;
import cn.bipark.reco.upms.model.viewmodel.form.UserLevelFormVM;
import cn.bipark.reco.upms.model.viewmodel.list.UserLevelListVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserLevelExportVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserLevelImportVM;
import cn.bipark.reco.upms.web.service.UserLevelAppService;
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
@RestController("upms.userlevel")
@RequestMapping("/upms/user-level")
@Api(tags = "用户等级管理")
@Mark(UserLevelFormVM.class)
// @ConditionalOnProperty(prefix = "reco.platform.webapi", name = "enabled", havingValue = "true")
public class UserLevelController extends BaseController {

    @ApiOperation(value = "用户等级-获取详情")
    @GetMapping("{id}")
    public UserLevelDetailVM get(@PathVariable Long id) {
        return resolve(UserLevelAppService.class).get(id);
    }

    @ApiOperation(value = "用户等级-分页查询")
    @GetMapping()
    public PagedList<UserLevelListVM> getPaged(UserLevelQuery query) {
        return resolve(UserLevelAppService.class).getPaged(query);
    }

    @ApiOperation(value = "用户等级-查询数量")
    @GetMapping("count")
    public long count(UserLevelQuery query) {
        return resolve(UserLevelAppService.class).count(query);
    }

    @ApiOperation(value = "用户等级-查询全部")
    @GetMapping("list")
    public List<UserLevelListVM> getList(UserLevelQuery query) {
        return resolve(UserLevelAppService.class).getAll(query);
    }

//    @PreAuthorize("hasAuthority('USER_LEVEL_DEL')")
//    @PostAuthorize("appLog('UPMS', '删除用户等级', '编号%d', #id)")
    @ApiOperation(value = "用户等级-删除")
    @DeleteMapping("{id}")
    public boolean delete(@PathVariable Long id) {
        return resolve(UserLevelAppService.class).delete(id);
    }

//    @PreAuthorize("hasAuthority('USER_LEVEL_DEL')")
//    @PostAuthorize("appLog('UPMS', '批量删除用户等级', '编号%s', #ids)")
    @ApiOperation(value = "用户等级-批量删除")
    @PutMapping("batch-delete")
    public int batchDelete(@RequestBody Long[] ids) {
        return resolve(UserLevelAppService.class).batchDelete(ids);
    }

//    @PreAuthorize("hasAuthority('USER_LEVEL_ADD')")
//    @PostAuthorize("appLog('UPMS', '添加用户等级', '%s，编号%d', #vm.toString(), returnObject)")
    @ApiOperation(value = "用户等级-添加")
    @PostMapping()
    public Long post(@Valid @RequestBody UserLevelFormVM vm) {
        return resolve(UserLevelAppService.class).post(vm);
    }

//    @PreAuthorize("hasAuthority('USER_LEVEL_EDIT')")
//    @PostAuthorize("appLog('UPMS', '修改用户等级', '%s，编号%d', #vm.toString(), #id)")
    @ApiOperation(value = "用户等级-修改")
    @PutMapping("{id}")
    public boolean put(@PathVariable Long id, @Valid @RequestBody UserLevelFormVM vm) {
        return resolve(UserLevelAppService.class).put(vm, id);
    }

    @ApiOperation(value = "用户等级-导入Excel")
    @PostMapping("import")
    public boolean importExcel(@RequestParam("file") MultipartFile file) {
        List<UserLevelImportVM> list = EasyExcelUtil.importExcel(file, UserLevelImportVM.class);
        return resolve(UserLevelAppService.class).importList(list);
    }

    @ApiOperation(value = "用户等级-下载Excel导入模板")
    @GetMapping("excel")
    public void excelTemplate(HttpServletResponse response) throws Exception {
        String filename = "用户等级表-导入模板.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<UserLevelImportVM> list = new ArrayList<>();
        list.add(new UserLevelImportVM());
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

    @ApiOperation(value = "用户等级-导出Excel")
    @GetMapping("export")
    public void exportExcel(HttpServletResponse response, UserLevelQuery query) throws Exception {
        String filename = "用户等级表.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<UserLevelExportVM> list = resolve(UserLevelAppService.class).export(query);
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

}
