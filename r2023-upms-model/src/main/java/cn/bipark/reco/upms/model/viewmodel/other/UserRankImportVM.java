package cn.bipark.reco.upms.model.viewmodel.other;

import cn.afterturn.easypoi.excel.annotation.Excel;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * 个人排行榜-导入VM
 */
@Data
public class UserRankImportVM {

	/** 
	 * 分数 
	 */
	@Excel(name = "分数", orderNum = "0", width = 20)
	private Integer score;

	/** 
	 * 用时 
	 */
	@Excel(name = "用时", orderNum = "1", width = 20)
	private Long usedTime;

	/** 
	 * 排名数 
	 */
	@Excel(name = "排名数", orderNum = "2", width = 20)
	private Integer rankNum;

  

}
