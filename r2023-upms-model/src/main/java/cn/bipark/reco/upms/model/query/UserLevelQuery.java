package cn.bipark.reco.upms.model.query;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.query.BasePagedQuery;
import cn.bipark.reco.upms.model.mapper.BiUserLevelColumn;
import java.math.BigDecimal;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "用户等级查询条件")
public class UserLevelQuery extends BasePagedQuery {

	/** 
	 * 用户id 
	 */
	@ApiModelProperty(value = "用户id")
	private Long userId;
	/** 
	 * 关卡id 
	 */
	@ApiModelProperty(value = "关卡id")
	private Long levelId;
	/** 
	 * 问题id集合 
	 */
	@ApiModelProperty(value = "问题id集合")
	private String questions;

    private static final BiUserLevelColumn.BiUserLevel biUserLevel = BiUserLevelColumn.biUserLevel;

    /**
     * 获得查询条件
     *
     * @return
     */
    @Override
    public QueryDSL query() {
        return query(biUserLevel)
			.ifEqual(getUserId(), biUserLevel.userId)
			.ifEqual(getLevelId(), biUserLevel.levelId)
			.ifEqual(getQuestions(), biUserLevel.questions);

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
	public UserLevelQuery setUserId(Long value) {
		this.userId = value;
        return this;
	}
	
	/** 
	 * 获取[关卡id]
	 */
	public Long getLevelId() {
		return this.levelId;
	}
	
	/** 
	 * 设置[关卡id]
	 */
	public UserLevelQuery setLevelId(Long value) {
		this.levelId = value;
        return this;
	}
	
	/** 
	 * 获取[问题id集合]
	 */
	public String getQuestions() {
		return this.questions;
	}
	
	/** 
	 * 设置[问题id集合]
	 */
	public UserLevelQuery setQuestions(String value) {
		this.questions = value;
        return this;
	}
	


}
