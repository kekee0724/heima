package cn.bipark.reco.upms.web.webapi;

import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.web.api.BaseController;
import cn.bipark.reco.core.web.api.Mark;
import cn.bipark.reco.upms.model.query.TeamQuery;
import cn.bipark.reco.upms.model.viewmodel.list.TeamListVM;
import cn.bipark.reco.upms.model.viewmodel.form.TeamFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.TeamDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.TeamImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.TeamExportVM;
import cn.bipark.reco.upms.web.service.TeamAppService;
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
import cn.bipark.reco.upms.model.query.TeamQuery;
import cn.bipark.reco.upms.model.viewmodel.detail.TeamDetailVM;
import cn.bipark.reco.upms.model.viewmodel.form.TeamFormVM;
import cn.bipark.reco.upms.model.viewmodel.list.TeamListVM;
import cn.bipark.reco.upms.model.viewmodel.other.TeamExportVM;
import cn.bipark.reco.upms.model.viewmodel.other.TeamImportVM;
import cn.bipark.reco.upms.web.service.TeamAppService;
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
@RestController("upms.team")
@RequestMapping("/upms/team")
@Api(tags = "团队管理")
@Mark(TeamFormVM.class)
// @ConditionalOnProperty(prefix = "reco.platform.webapi", name = "enabled", havingValue = "true")
public class TeamController extends BaseController {

    @ApiOperation(value = "团队-获取详情")
    @GetMapping("{id}")
    public TeamDetailVM get(@PathVariable Long id) {
        return resolve(TeamAppService.class).get(id);
    }

    @ApiOperation(value = "团队-分页查询")
    @GetMapping()
    public PagedList<TeamListVM> getPaged(TeamQuery query) {
        return resolve(TeamAppService.class).getPaged(query);
    }

    @ApiOperation(value = "团队-查询数量")
    @GetMapping("count")
    public long count(TeamQuery query) {
        return resolve(TeamAppService.class).count(query);
    }

    @ApiOperation(value = "团队-查询全部")
    @GetMapping("list")
    public List<TeamListVM> getList(TeamQuery query) {
        return resolve(TeamAppService.class).getAll(query);
    }

//    @PreAuthorize("hasAuthority('TEAM_DEL')")
//    @PostAuthorize("appLog('UPMS', '删除团队', '编号%d', #id)")
    @ApiOperation(value = "团队-删除")
    @DeleteMapping("{id}")
    public boolean delete(@PathVariable Long id) {
        return resolve(TeamAppService.class).delete(id);
    }

//    @PreAuthorize("hasAuthority('TEAM_DEL')")
//    @PostAuthorize("appLog('UPMS', '批量删除团队', '编号%s', #ids)")
    @ApiOperation(value = "团队-批量删除")
    @PutMapping("batch-delete")
    public int batchDelete(@RequestBody Long[] ids) {
        return resolve(TeamAppService.class).batchDelete(ids);
    }

//    @PreAuthorize("hasAuthority('TEAM_ADD')")
//    @PostAuthorize("appLog('UPMS', '添加团队', '%s，编号%d', #vm.toString(), returnObject)")
    @ApiOperation(value = "团队-添加")
    @PostMapping()
    public Long post(@Valid @RequestBody TeamFormVM vm) {
        return resolve(TeamAppService.class).post(vm);
    }

//    @PreAuthorize("hasAuthority('TEAM_EDIT')")
//    @PostAuthorize("appLog('UPMS', '修改团队', '%s，编号%d', #vm.toString(), #id)")
    @ApiOperation(value = "团队-修改")
    @PutMapping("{id}")
    public boolean put(@PathVariable Long id, @Valid @RequestBody TeamFormVM vm) {
        return resolve(TeamAppService.class).put(vm, id);
    }

    @ApiOperation(value = "团队-导入Excel")
    @PostMapping("import")
    public boolean importExcel(@RequestParam("file") MultipartFile file) {
        List<TeamImportVM> list = EasyExcelUtil.importExcel(file, TeamImportVM.class);
        return resolve(TeamAppService.class).importList(list);
    }

    @ApiOperation(value = "团队-下载Excel导入模板")
    @GetMapping("excel")
    public void excelTemplate(HttpServletResponse response) throws Exception {
        String filename = "团队表-导入模板.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<TeamImportVM> list = new ArrayList<>();
        list.add(new TeamImportVM());
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

    @ApiOperation(value = "团队-导出Excel")
    @GetMapping("export")
    public void exportExcel(HttpServletResponse response, TeamQuery query) throws Exception {
        String filename = "团队表.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<TeamExportVM> list = resolve(TeamAppService.class).export(query);
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

}
