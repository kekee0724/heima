package cn.bipark.reco.upms.model.viewmodel.other;

import cn.afterturn.easypoi.excel.annotation.Excel;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * 团队-导出VM
 */
@Data
public class TeamExportVM {

	/** 
	 * 团队名 
	 */
	@Excel(name = "团队名", orderNum = "0", width = 20)
	private String teamName;

	/** 
	 * 团队机构 
	 */
	@Excel(name = "团队机构", orderNum = "1", width = 20)
	private String teamOrg;

  

}
