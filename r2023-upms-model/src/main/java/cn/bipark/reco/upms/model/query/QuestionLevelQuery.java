package cn.bipark.reco.upms.model.query;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.query.BasePagedQuery;
import cn.bipark.reco.upms.model.mapper.BiQuestionLevelColumn;
import java.math.BigDecimal;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "题目等级查询条件")
public class QuestionLevelQuery extends BasePagedQuery {

	/** 
	 * 问题id 
	 */
	@ApiModelProperty(value = "问题id")
	private Long questionId;
	/** 
	 * 关卡id 
	 */
	@ApiModelProperty(value = "关卡id")
	private Long levelId;

    private static final BiQuestionLevelColumn.BiQuestionLevel biQuestionLevel = BiQuestionLevelColumn.biQuestionLevel;

    /**
     * 获得查询条件
     *
     * @return
     */
    @Override
    public QueryDSL query() {
        return query(biQuestionLevel)
			.ifEqual(getQuestionId(), biQuestionLevel.questionId)
			.ifEqual(getLevelId(), biQuestionLevel.levelId);

    }

	/** 
	 * 获取[问题id]
	 */
	public Long getQuestionId() {
		return this.questionId;
	}
	
	/** 
	 * 设置[问题id]
	 */
	public QuestionLevelQuery setQuestionId(Long value) {
		this.questionId = value;
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
	public QuestionLevelQuery setLevelId(Long value) {
		this.levelId = value;
        return this;
	}
	


}
