package cn.bipark.reco.upms.model.query;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.query.BasePagedQuery;
import cn.bipark.reco.upms.model.mapper.BiQuestionColumn;
import java.math.BigDecimal;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "未知对象查询条件")
public class QuestionQuery extends BasePagedQuery {

	/** 
	 * questionnaireId 
	 */
	@ApiModelProperty(value = "questionnaireId")
	private Long questionnaireId;
	/** 
	 * logicalType 
	 */
	@ApiModelProperty(value = "logicalType")
	private Integer logicalType;
	/** 
	 * businessType 
	 */
	@ApiModelProperty(value = "businessType")
	private Integer businessType;
	/** 
	 * sequence 
	 */
	@ApiModelProperty(value = "sequence")
	private Integer sequence;
	/** 
	 * isLibrary 
	 */
	@ApiModelProperty(value = "isLibrary")
	private Boolean isLibrary;
	/** 
	 * isBuiltin 
	 */
	@ApiModelProperty(value = "isBuiltin")
	private Boolean isBuiltin;
	/** 
	 * description 
	 */
	@ApiModelProperty(value = "description")
	private String description;
	/** 
	 * inputerId 
	 */
	@ApiModelProperty(value = "inputerId")
	private Long inputerId;
	/** 
	 * inputTime 
	 */
	@ApiModelProperty(value = "inputTime起")
    private Date inputTimeBegin;
	@ApiModelProperty(value = "inputTime至")
	private Date inputTimeEnd;
	/** 
	 * title 
	 */
	@ApiModelProperty(value = "title")
	private String title;
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
			.ifEqual(getQuestionnaireId(), biQuestion.questionnaireId)
			.ifEqual(getLogicalType(), biQuestion.logicalType)
			.ifEqual(getBusinessType(), biQuestion.businessType)
			.ifEqual(getSequence(), biQuestion.sequence)
			.ifEqual(getIsLibrary(), biQuestion.isLibrary)
			.ifEqual(getIsBuiltin(), biQuestion.isBuiltin)
			.ifEqual(getDescription(), biQuestion.description)
			.ifEqual(getInputerId(), biQuestion.inputerId)
			.ifGreaterThanOrEqual(getInputTimeBegin(), biQuestion.inputTime)
			.ifLessThanOrEqual(getInputTimeEnd(), biQuestion.inputTime)
			.ifEqual(getTitle(), biQuestion.title)
			.ifEqual(getType(), biQuestion.type)
			.ifEqual(getContent(), biQuestion.content)
			.ifEqual(getAnswer(), biQuestion.answer)
			.ifEqual(getOptions(), biQuestion.options)
			.ifEqual(getScore(), biQuestion.score);

    }

	/** 
	 * 获取[questionnaireId]
	 */
	public Long getQuestionnaireId() {
		return this.questionnaireId;
	}
	
	/** 
	 * 设置[questionnaireId]
	 */
	public QuestionQuery setQuestionnaireId(Long value) {
		this.questionnaireId = value;
        return this;
	}
	
	/** 
	 * 获取[logicalType]
	 */
	public Integer getLogicalType() {
		return this.logicalType;
	}
	
	/** 
	 * 设置[logicalType]
	 */
	public QuestionQuery setLogicalType(Integer value) {
		this.logicalType = value;
        return this;
	}
	
	/** 
	 * 获取[businessType]
	 */
	public Integer getBusinessType() {
		return this.businessType;
	}
	
	/** 
	 * 设置[businessType]
	 */
	public QuestionQuery setBusinessType(Integer value) {
		this.businessType = value;
        return this;
	}
	
	/** 
	 * 获取[sequence]
	 */
	public Integer getSequence() {
		return this.sequence;
	}
	
	/** 
	 * 设置[sequence]
	 */
	public QuestionQuery setSequence(Integer value) {
		this.sequence = value;
        return this;
	}
	
	/** 
	 * 获取[isLibrary]
	 */
	public Boolean getIsLibrary() {
		return this.isLibrary;
	}
	
	/** 
	 * 设置[isLibrary]
	 */
	public QuestionQuery setIsLibrary(Boolean value) {
		this.isLibrary = value;
        return this;
	}
	
	/** 
	 * 获取[isBuiltin]
	 */
	public Boolean getIsBuiltin() {
		return this.isBuiltin;
	}
	
	/** 
	 * 设置[isBuiltin]
	 */
	public QuestionQuery setIsBuiltin(Boolean value) {
		this.isBuiltin = value;
        return this;
	}
	
	/** 
	 * 获取[description]
	 */
	public String getDescription() {
		return this.description;
	}
	
	/** 
	 * 设置[description]
	 */
	public QuestionQuery setDescription(String value) {
		this.description = value;
        return this;
	}
	
	/** 
	 * 获取[inputerId]
	 */
	public Long getInputerId() {
		return this.inputerId;
	}
	
	/** 
	 * 设置[inputerId]
	 */
	public QuestionQuery setInputerId(Long value) {
		this.inputerId = value;
        return this;
	}
	
	/** 
	 * 获取[inputTime]范围起点
	 */
	public Date getInputTimeBegin() {
		return this.inputTimeBegin;
	}
	
	/** 
	 * 获取[inputTime]范围起点
	 */
	public QuestionQuery setInputTimeBegin(Date value) {
		this.inputTimeBegin = value;
        return this;
	}	
	
	/** 
	 * 获取[inputTime]范围终点
	 */
	public Date getInputTimeEnd() {
		return this.inputTimeEnd;
	}
	
	/** 
	 * 获取[inputTime]范围终点
	 */
	public QuestionQuery setInputTimeEnd(Date value) {
		this.inputTimeEnd = value;
        return this;
	}
	
	/** 
	 * 获取[title]
	 */
	public String getTitle() {
		return this.title;
	}
	
	/** 
	 * 设置[title]
	 */
	public QuestionQuery setTitle(String value) {
		this.title = value;
        return this;
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
