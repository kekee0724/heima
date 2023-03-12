package cn.bipark.reco.upms.model.query;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.query.BasePagedQuery;
import cn.bipark.reco.upms.model.mapper.BiUserRankColumn;
import java.math.BigDecimal;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "个人排行榜查询条件")
public class UserRankQuery extends BasePagedQuery {

	/** 
	 * 等级id 
	 */
	@ApiModelProperty(value = "等级id")
	private Long levelId;
	/** 
	 * 用户id 
	 */
	@ApiModelProperty(value = "用户id")
	private Long userId;
	/** 
	 * 分数 
	 */
	@ApiModelProperty(value = "分数")
	private Integer score;
	/** 
	 * 用时 
	 */
	@ApiModelProperty(value = "用时")
	private Long usedTime;
	/** 
	 * 团队id 
	 */
	@ApiModelProperty(value = "团队id")
	private Long teamId;
	/** 
	 * 排名数 
	 */
	@ApiModelProperty(value = "排名数")
	private Integer rankNum;

    private static final BiUserRankColumn.BiUserRank biUserRank = BiUserRankColumn.biUserRank;

    /**
     * 获得查询条件
     *
     * @return
     */
    @Override
    public QueryDSL query() {
        return query(biUserRank)
			.ifEqual(getLevelId(), biUserRank.levelId)
			.ifEqual(getUserId(), biUserRank.userId)
			.ifEqual(getScore(), biUserRank.score)
			.ifEqual(getUsedTime(), biUserRank.usedTime)
			.ifEqual(getTeamId(), biUserRank.teamId)
			.ifEqual(getRankNum(), biUserRank.rankNum);

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
	public UserRankQuery setLevelId(Long value) {
		this.levelId = value;
        return this;
	}
	
	/** 
	 * 获取[用户id]
	 */
	public Long getUserId() {
		return this.userId;
	}
	
	/** 
	 * 设置[用户id]
	 */
	public UserRankQuery setUserId(Long value) {
		this.userId = value;
        return this;
	}
	
	/** 
	 * 获取[分数]
	 */
	public Integer getScore() {
		return this.score;
	}
	
	/** 
	 * 设置[分数]
	 */
	public UserRankQuery setScore(Integer value) {
		this.score = value;
        return this;
	}
	
	/** 
	 * 获取[用时]
	 */
	public Long getUsedTime() {
		return this.usedTime;
	}
	
	/** 
	 * 设置[用时]
	 */
	public UserRankQuery setUsedTime(Long value) {
		this.usedTime = value;
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
	public UserRankQuery setTeamId(Long value) {
		this.teamId = value;
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
	public UserRankQuery setRankNum(Integer value) {
		this.rankNum = value;
        return this;
	}
	


}
