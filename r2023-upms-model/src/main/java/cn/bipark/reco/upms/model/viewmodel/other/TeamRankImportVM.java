package cn.bipark.reco.upms.model.viewmodel.other;

import cn.afterturn.easypoi.excel.annotation.Excel;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * 团队排行榜-导入VM
 */
@Data
public class TeamRankImportVM {

	/** 
	 * 已参与人数 
	 */
	@Excel(name = "已参与人数", orderNum = "0", width = 20)
	private Integer participants;

	/** 
	 * 总人数 
	 */
	@Excel(name = "总人数", orderNum = "1", width = 20)
	private Integer totalUser;

	/** 
	 * 总分数 
	 */
	@Excel(name = "总分数", orderNum = "2", width = 20)
	private Long totalScore;

	/** 
	 * 总时间 
	 */
	@Excel(name = "总时间", orderNum = "3", width = 20)
	private Long totalTime;

	/** 
	 * 团队平均分等于团队所有答题总分除以团队人员总数 
	 */
	@Excel(name = "团队平均分等于团队所有答题总分除以团队人员总数", orderNum = "4", width = 20)
	private Float averageScore;

	/** 
	 * 参与率等于参与人数除以团队人数 
	 */
	@Excel(name = "参与率等于参与人数除以团队人数", orderNum = "5", width = 20)
	private Float partyRate;

	/** 
	 * 平均答题时间等于团队总时间除以参与人数 
	 */
	@Excel(name = "平均答题时间等于团队总时间除以参与人数", orderNum = "6", width = 20)
	private Float averageTime;

	/** 
	 * 排名数 
	 */
	@Excel(name = "排名数", orderNum = "7", width = 20)
	private Integer rankNum;

	/** 
	 * 是否已被淘汰 0-正常， 1-被淘汰 
	 */
	@Excel(name = "是否已被淘汰 0-正常， 1-被淘汰", orderNum = "8", width = 20)
	private Integer isOut;

  

}
