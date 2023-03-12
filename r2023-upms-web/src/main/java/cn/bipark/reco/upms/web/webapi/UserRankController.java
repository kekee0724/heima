package cn.bipark.reco.upms.web.webapi;

import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.web.api.BaseController;
import cn.bipark.reco.core.web.api.Mark;
import cn.bipark.reco.upms.model.query.UserRankQuery;
import cn.bipark.reco.upms.model.viewmodel.list.UserRankListVM;
import cn.bipark.reco.upms.model.viewmodel.form.UserRankFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.UserRankDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserRankImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserRankExportVM;
import cn.bipark.reco.upms.web.service.UserRankAppService;
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
import cn.bipark.reco.upms.model.query.UserRankQuery;
import cn.bipark.reco.upms.model.viewmodel.detail.UserRankDetailVM;
import cn.bipark.reco.upms.model.viewmodel.form.UserRankFormVM;
import cn.bipark.reco.upms.model.viewmodel.list.UserRankListVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserRankExportVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserRankImportVM;
import cn.bipark.reco.upms.web.service.UserRankAppService;
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
@RestController("upms.userrank")
@RequestMapping("/upms/user-rank")
@Api(tags = "个人排行榜管理")
@Mark(UserRankFormVM.class)
// @ConditionalOnProperty(prefix = "reco.platform.webapi", name = "enabled", havingValue = "true")
public class UserRankController extends BaseController {

    @ApiOperation(value = "个人排行榜-获取详情")
    @GetMapping("{id}")
    public UserRankDetailVM get(@PathVariable Long id) {
        return resolve(UserRankAppService.class).get(id);
    }

    @ApiOperation(value = "个人排行榜-分页查询")
    @GetMapping()
    public PagedList<UserRankListVM> getPaged(UserRankQuery query) {
        return resolve(UserRankAppService.class).getPaged(query);
    }

    @ApiOperation(value = "个人排行榜-查询数量")
    @GetMapping("count")
    public long count(UserRankQuery query) {
        return resolve(UserRankAppService.class).count(query);
    }

    @ApiOperation(value = "个人排行榜-查询全部")
    @GetMapping("list")
    public List<UserRankListVM> getList(UserRankQuery query) {
        return resolve(UserRankAppService.class).getAll(query);
    }

//    @PreAuthorize("hasAuthority('USER_RANK_DEL')")
//    @PostAuthorize("appLog('UPMS', '删除个人排行榜', '编号%d', #id)")
    @ApiOperation(value = "个人排行榜-删除")
    @DeleteMapping("{id}")
    public boolean delete(@PathVariable Long id) {
        return resolve(UserRankAppService.class).delete(id);
    }

//    @PreAuthorize("hasAuthority('USER_RANK_DEL')")
//    @PostAuthorize("appLog('UPMS', '批量删除个人排行榜', '编号%s', #ids)")
    @ApiOperation(value = "个人排行榜-批量删除")
    @PutMapping("batch-delete")
    public int batchDelete(@RequestBody Long[] ids) {
        return resolve(UserRankAppService.class).batchDelete(ids);
    }

//    @PreAuthorize("hasAuthority('USER_RANK_ADD')")
//    @PostAuthorize("appLog('UPMS', '添加个人排行榜', '%s，编号%d', #vm.toString(), returnObject)")
    @ApiOperation(value = "个人排行榜-添加")
    @PostMapping()
    public Long post(@Valid @RequestBody UserRankFormVM vm) {
        return resolve(UserRankAppService.class).post(vm);
    }

//    @PreAuthorize("hasAuthority('USER_RANK_EDIT')")
//    @PostAuthorize("appLog('UPMS', '修改个人排行榜', '%s，编号%d', #vm.toString(), #id)")
    @ApiOperation(value = "个人排行榜-修改")
    @PutMapping("{id}")
    public boolean put(@PathVariable Long id, @Valid @RequestBody UserRankFormVM vm) {
        return resolve(UserRankAppService.class).put(vm, id);
    }

    @ApiOperation(value = "个人排行榜-导入Excel")
    @PostMapping("import")
    public boolean importExcel(@RequestParam("file") MultipartFile file) {
        List<UserRankImportVM> list = EasyExcelUtil.importExcel(file, UserRankImportVM.class);
        return resolve(UserRankAppService.class).importList(list);
    }

    @ApiOperation(value = "个人排行榜-下载Excel导入模板")
    @GetMapping("excel")
    public void excelTemplate(HttpServletResponse response) throws Exception {
        String filename = "个人排行榜表-导入模板.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<UserRankImportVM> list = new ArrayList<>();
        list.add(new UserRankImportVM());
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

    @ApiOperation(value = "个人排行榜-导出Excel")
    @GetMapping("export")
    public void exportExcel(HttpServletResponse response, UserRankQuery query) throws Exception {
        String filename = "个人排行榜表.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<UserRankExportVM> list = resolve(UserRankAppService.class).export(query);
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

}
