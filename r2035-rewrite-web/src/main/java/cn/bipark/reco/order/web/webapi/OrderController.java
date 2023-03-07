package cn.bipark.reco.order.web.webapi;

import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.web.api.BaseController;
import cn.bipark.reco.core.web.api.Mark;
import cn.bipark.reco.office.driver.poi.utils.EasyExcelUtil;
import cn.bipark.reco.order.model.query.OrderQuery;
import cn.bipark.reco.order.model.viewmodel.detail.OrderDetailVM;
import cn.bipark.reco.order.model.viewmodel.form.OrderFormVM;
import cn.bipark.reco.order.model.viewmodel.list.OrderListVM;
import cn.bipark.reco.order.model.viewmodel.other.OrderExportVM;
import cn.bipark.reco.order.model.viewmodel.other.OrderImportVM;
import cn.bipark.reco.order.web.service.OrderAppService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

//TODO 开发时为接口测试方便使用此注解避免被security拦截，同理，写接口的权限检查默认也被注释。下述条件注解被注释。
@PreAuthorize("permitAll()")
@RestController("rewrite.order")
@RequestMapping("/rewrite/order")
@Api(tags = "测试对象管理")
@Mark(OrderFormVM.class)
// @ConditionalOnProperty(prefix = "reco.platform.webapi", name = "enabled", havingValue = "true")
public class OrderController extends BaseController {

    @ApiOperation(value = "测试对象-获取详情")
    @GetMapping("{id}")
    public OrderDetailVM get(@PathVariable Long id) {
        return resolve(OrderAppService.class).get(id);
    }

    @ApiOperation(value = "测试对象-分页查询")
    @GetMapping()
    public PagedList<OrderListVM> getPaged(OrderQuery query) {
        return resolve(OrderAppService.class).getPaged(query);
    }

    @ApiOperation(value = "测试对象-查询数量")
    @GetMapping("count")
    public long count(OrderQuery query) {
        return resolve(OrderAppService.class).count(query);
    }

    @ApiOperation(value = "测试对象-查询全部")
    @GetMapping("list")
    public List<OrderListVM> getList(OrderQuery query) {
        return resolve(OrderAppService.class).getAll(query);
    }

//    @PreAuthorize("hasAuthority('ORDER_DEL')")
//    @PostAuthorize("appLog('REWRITE', '删除测试对象', '编号%d', #id)")
    @ApiOperation(value = "测试对象-删除")
    @DeleteMapping("{id}")
    public boolean delete(@PathVariable Long id) {
        return resolve(OrderAppService.class).delete(id);
    }

//    @PreAuthorize("hasAuthority('ORDER_DEL')")
//    @PostAuthorize("appLog('REWRITE', '批量删除测试对象', '编号%s', #ids)")
    @ApiOperation(value = "测试对象-批量删除")
    @PutMapping("batch-delete")
    public int batchDelete(@RequestBody Long[] ids) {
        return resolve(OrderAppService.class).batchDelete(ids);
    }

//    @PreAuthorize("hasAuthority('ORDER_ADD')")
//    @PostAuthorize("appLog('REWRITE', '添加测试对象', '%s，编号%d', #vm.toString(), returnObject)")
    @ApiOperation(value = "测试对象-添加")
    @PostMapping()
    public Long post(@Valid @RequestBody OrderFormVM vm) {
        return resolve(OrderAppService.class).post(vm);
    }

//    @PreAuthorize("hasAuthority('ORDER_EDIT')")
//    @PostAuthorize("appLog('REWRITE', '修改测试对象', '%s，编号%d', #vm.toString(), #id)")
    @ApiOperation(value = "测试对象-修改")
    @PutMapping("{id}")
    public boolean put(@PathVariable Long id, @Valid @RequestBody OrderFormVM vm) {
        return resolve(OrderAppService.class).put(vm, id);
    }

    @ApiOperation(value = "测试对象-导入Excel")
    @PostMapping("import")
    public boolean importExcel(@RequestParam("file") MultipartFile file) {
        List<OrderImportVM> list = EasyExcelUtil.importExcel(file, OrderImportVM.class);
        return resolve(OrderAppService.class).importList(list);
    }

    @ApiOperation(value = "测试对象-下载Excel导入模板")
    @GetMapping("excel")
    public void excelTemplate(HttpServletResponse response) throws Exception {
        String filename = "测试对象表-导入模板.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<OrderImportVM> list = new ArrayList<>();
        list.add(new OrderImportVM());
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

    @ApiOperation(value = "测试对象-导出Excel")
    @GetMapping("export")
    public void exportExcel(HttpServletResponse response, OrderQuery query) throws Exception {
        String filename = "测试对象表.xls";
        String name = new String(filename.getBytes("utf-8"), "ISO-8859-1");
        response.addHeader("Content-Disposition", "attachment;filename=" + name);
        response.setContentType("application/vnd.ms-excel;charset=gb2312");

        List<OrderExportVM> list = resolve(OrderAppService.class).export(query);
        EasyExcelUtil.exportExcel(list, response.getOutputStream());
    }

}
