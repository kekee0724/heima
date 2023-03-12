package cn.bipark.reco.upms.model.viewmodel.other;

import cn.afterturn.easypoi.excel.annotation.Excel;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * 用户等级-导出VM
 */
@Data
public class UserLevelExportVM {

	/** 
	 * 问题id集合 
	 */
	@Excel(name = "问题id集合", orderNum = "0", width = 20)
	private String questions;

  

}
