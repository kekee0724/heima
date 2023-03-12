package cn.bipark.reco.upms.model.query;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.query.BasePagedQuery;
import cn.bipark.reco.upms.model.mapper.BiTeamRankColumn;
import java.math.BigDecimal;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "团队排行榜查询条件")
public class TeamRankQuery extends BasePagedQuery {

	/** 
	 * 等级id 
	 */
	@ApiModelProperty(value = "等级id")
	private Long levelId;
	/** 
	 * 团队id 
	 */
	@ApiModelProperty(value = "团队id")
	private Long teamId;
	/** 
	 * 已参与人数 
	 */
	@ApiModelProperty(value = "已参与人数")
	private Integer participants;
	/** 
	 * 总人数 
	 */
	@ApiModelProperty(value = "总人数")
	private Integer totalUser;
	/** 
	 * 总分数 
	 */
	@ApiModelProperty(value = "总分数")
	private Long totalScore;
	/** 
	 * 总时间 
	 */
	@ApiModelProperty(value = "总时间")
	private Long totalTime;
	/** 
	 * 团队平均分等于团队所有答题总分除以团队人员总数 
	 */
	@ApiModelProperty(value = "团队平均分等于团队所有答题总分除以团队人员总数")
	private Float averageScore;
	/** 
	 * 参与率等于参与人数除以团队人数 
	 */
	@ApiModelProperty(value = "参与率等于参与人数除以团队人数")
	private Float partyRate;
	/** 
	 * 平均答题时间等于团队总时间除以参与人数 
	 */
	@ApiModelProperty(value = "平均答题时间等于团队总时间除以参与人数")
	private Float averageTime;
	/** 
	 * 排名数 
	 */
	@ApiModelProperty(value = "排名数")
	private Integer rankNum;
	/** 
	 * 是否已被淘汰 0-正常， 1-被淘汰 
	 */
	@ApiModelProperty(value = "是否已被淘汰 0-正常， 1-被淘汰")
	private Integer isOut;

    private static final BiTeamRankColumn.BiTeamRank biTeamRank = BiTeamRankColumn.biTeamRank;

    /**
     * 获得查询条件
     *
     * @return
     */
    @Override
    public QueryDSL query() {
        return query(biTeamRank)
			.ifEqual(getLevelId(), biTeamRank.levelId)
			.ifEqual(getTeamId(), biTeamRank.teamId)
			.ifEqual(getParticipants(), biTeamRank.participants)
			.ifEqual(getTotalUser(), biTeamRank.totalUser)
			.ifEqual(getTotalScore(), biTeamRank.totalScore)
			.ifEqual(getTotalTime(), biTeamRank.totalTime)
			.ifEqual(getAverageScore(), biTeamRank.averageScore)
			.ifEqual(getPartyRate(), biTeamRank.partyRate)
			.ifEqual(getAverageTime(), biTeamRank.averageTime)
			.ifEqual(getRankNum(), biTeamRank.rankNum)
			.ifEqual(getIsOut(), biTeamRank.isOut);

    }

	/** 
	 * 获取[等级id]
	 */
	public Long getLevelId() {
		return this.levelId;
	}
	
	/** 
	 * 设置[等级id]
	 */
	public TeamRankQuery setLevelId(Long value) {
		this.levelId = value;
        return this;
	}
	
	/** 
	 * 获取[团队id]
	 */
	public Long getTeamId() {
		return this.teamId;
	}
	
	/** 
	 * 设置[团队id]
	 */
	public TeamRankQuery setTeamId(Long value) {
		this.teamId = value;
        return this;
	}
	
	/** 
	 * 获取[已参与人数]
	 */
	public Integer getParticipants() {
		return this.participants;
	}
	
	/** 
	 * 设置[已参与人数]
	 */
	public TeamRankQuery setParticipants(Integer value) {
		this.participants = value;
        return this;
	}
	
	/** 
	 * 获取[总人数]
	 */
	public Integer getTotalUser() {
		return this.totalUser;
	}
	
	/** 
	 * 设置[总人数]
	 */
	public TeamRankQuery setTotalUser(Integer value) {
		this.totalUser = value;
        return this;
	}
	
	/** 
	 * 获取[总分数]
	 */
	public Long getTotalScore() {
		return this.totalScore;
	}
	
	/** 
	 * 设置[总分数]
	 */
	public TeamRankQuery setTotalScore(Long value) {
		this.totalScore = value;
        return this;
	}
	
	/** 
	 * 获取[总时间]
	 */
	public Long getTotalTime() {
		return this.totalTime;
	}
	
	/** 
	 * 设置[总时间]
	 */
	public TeamRankQuery setTotalTime(Long value) {
		this.totalTime = value;
        return this;
	}
	
	/** 
	 * 获取[团队平均分等于团队所有答题总分除以团队人员总数]
	 */
	public Float getAverageScore() {
		return this.averageScore;
	}
	
	/** 
	 * 设置[团队平均分等于团队所有答题总分除以团队人员总数]
	 */
	public TeamRankQuery setAverageScore(Float value) {
		this.averageScore = value;
        return this;
	}
	
	/** 
	 * 获取[参与率等于参与人数除以团队人数]
	 */
	public Float getPartyRate() {
		return this.partyRate;
	}
	
	/** 
	 * 设置[参与率等于参与人数除以团队人数]
	 */
	public TeamRankQuery setPartyRate(Float value) {
		this.partyRate = value;
        return this;
	}
	
	/** 
	 * 获取[平均答题时间等于团队总时间除以参与人数]
	 */
	public Float getAverageTime() {
		return this.averageTime;
	}
	
	/** 
	 * 设置[平均答题时间等于团队总时间除以参与人数]
	 */
	public TeamRankQuery setAverageTime(Float value) {
		this.averageTime = value;
        return this;
	}
	
	/** 
	 * 获取[排名数]
	 */
	public Integer getRankNum() {
		return this.rankNum;
	}
	
	/** 
	 * 设置[排名数]
	 */
	public TeamRankQuery setRankNum(Integer value) {
		this.rankNum = value;
        return this;
	}
	
	/** 
	 * 获取[是否已被淘汰 0-正常， 1-被淘汰]
	 */
	public Integer getIsOut() {
		return this.isOut;
	}
	
	/** 
	 * 设置[是否已被淘汰 0-正常， 1-被淘汰]
	 */
	public TeamRankQuery setIsOut(Integer value) {
		this.isOut = value;
        return this;
	}
	


}
