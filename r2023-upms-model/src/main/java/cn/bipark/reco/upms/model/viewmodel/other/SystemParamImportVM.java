package cn.bipark.reco.upms.model.viewmodel.other;

import cn.afterturn.easypoi.excel.annotation.Excel;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * 系统参数-导入VM
 */
@Data
public class SystemParamImportVM {

	/** 
	 * key值 
	 */
	@Excel(name = "key值", orderNum = "0", width = 20)
	private String paramKey;

	/** 
	 * 创建人 
	 */
	@Excel(name = "创建人", orderNum = "1", width = 20)
	private String gmtCreate;

	/** 
	 * 修改时间 
	 */
	@Excel(name = "修改时间", orderNum = "2", width = 20, format = "yyyy-MM-dd")
	private Date gmtUpdateTime;

	/** 
	 * 修改人 
	 */
	@Excel(name = "修改人", orderNum = "3", width = 20)
	private String gmtUpdate;

	/** 
	 * 创建时间 
	 */
	@Excel(name = "创建时间", orderNum = "4", width = 20, format = "yyyy-MM-dd")
	private Date gmtCreateTime;

  

}
