package cn.bipark.reco.upms.model.query;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.query.BasePagedQuery;
import cn.bipark.reco.upms.model.mapper.BiQuestionColumn;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "题目查询条件")
public class QuestionQuery extends BasePagedQuery {

	/** 
	 * 题型 1 单选，2多选 
	 */
	@ApiModelProperty(value = "题型 1 单选，2多选")
	private Integer type;
	/** 
	 * 题目 
	 */
	@ApiModelProperty(value = "题目")
	private String content;
	/** 
	 * 答案 
	 */
	@ApiModelProperty(value = "答案")
	private String answer;
	/** 
	 * 选项 JSON存储 
	 */
	@ApiModelProperty(value = "选项 JSON存储")
	private String options;
	/** 
	 * 分值 
	 */
	@ApiModelProperty(value = "分值")
	private Integer score;

    private static final BiQuestionColumn.BiQuestion biQuestion = BiQuestionColumn.biQuestion;

    /**
     * 获得查询条件
     *
     * @return
     */
    @Override
    public QueryDSL query() {
        return query(biQuestion)
			.ifEqual(getType(), biQuestion.type)
			.ifEqual(getContent(), biQuestion.content)
			.ifEqual(getAnswer(), biQuestion.answer)
			.ifEqual(getOptions(), biQuestion.options)
			.ifEqual(getScore(), biQuestion.score);

    }

	/** 
	 * 获取[题型 1 单选，2多选]
	 */
	public Integer getType() {
		return this.type;
	}
	
	/** 
	 * 设置[题型 1 单选，2多选]
	 */
	public QuestionQuery setType(Integer value) {
		this.type = value;
        return this;
	}
	
	/** 
	 * 获取[题目]
	 */
	public String getContent() {
		return this.content;
	}
	
	/** 
	 * 设置[题目]
	 */
	public QuestionQuery setContent(String value) {
		this.content = value;
        return this;
	}
	
	/** 
	 * 获取[答案]
	 */
	public String getAnswer() {
		return this.answer;
	}
	
	/** 
	 * 设置[答案]
	 */
	public QuestionQuery setAnswer(String value) {
		this.answer = value;
        return this;
	}
	
	/** 
	 * 获取[选项 JSON存储]
	 */
	public String getOptions() {
		return this.options;
	}
	
	/** 
	 * 设置[选项 JSON存储]
	 */
	public QuestionQuery setOptions(String value) {
		this.options = value;
        return this;
	}
	
	/** 
	 * 获取[分值]
	 */
	public Integer getScore() {
		return this.score;
	}
	
	/** 
	 * 设置[分值]
	 */
	public QuestionQuery setScore(Integer value) {
		this.score = value;
        return this;
	}
	


}
