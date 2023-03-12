package cn.bipark.reco.upms.model.viewmodel.other;

import cn.afterturn.easypoi.excel.annotation.Excel;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * 用户等级-导入VM
 */
@Data
public class UserLevelImportVM {

	/** 
	 * 问题id集合 
	 */
	@Excel(name = "问题id集合", orderNum = "0", width = 20)
	private String questions;

  

}
