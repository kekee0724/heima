package cn.bipark.reco.upms.model.viewmodel.other;

import cn.afterturn.easypoi.excel.annotation.Excel;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * 等级-导出VM
 */
@Data
public class LevelExportVM {

	/** 
	 * 闯关标题 
	 */
	@Excel(name = "闯关标题", orderNum = "0", width = 20)
	private String title;

	/** 
	 * 闯关内容 
	 */
	@Excel(name = "闯关内容", orderNum = "1", width = 20)
	private String content;

	/** 
	 * 封面图片 
	 */
	@Excel(name = "封面图片", orderNum = "2", width = 20)
	private String cover;

	/** 
	 * 开始时间 
	 */
	@Excel(name = "开始时间", orderNum = "3", width = 20, format = "yyyy-MM-dd")
	private Date startTime;

	/** 
	 * 结束时间 
	 */
	@Excel(name = "结束时间", orderNum = "4", width = 20, format = "yyyy-MM-dd")
	private Date endTime;

	/** 
	 * 挑战时间 
	 */
	@Excel(name = "挑战时间", orderNum = "5", width = 20)
	private Long retainTime;

	/** 
	 * 是否为当前关卡 
	 */
	@Excel(name = "是否为当前关卡", orderNum = "6", width = 20)
	private Integer isCurrent;

  

}
