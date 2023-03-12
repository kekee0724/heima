package cn.bipark.reco.upms.model.query;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.query.BasePagedQuery;
import cn.bipark.reco.upms.model.mapper.BiRecordColumn;
import java.math.BigDecimal;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "答题记录查询条件")
public class RecordQuery extends BasePagedQuery {

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
	 * 淘汰状态， -1 未到关卡淘汰，0 通过，1 淘汰 
	 */
	@ApiModelProperty(value = "淘汰状态， -1 未到关卡淘汰，0 通过，1 淘汰")
	private Integer pass;
	/** 
	 * 正确率 
	 */
	@ApiModelProperty(value = "正确率")
	private Float correctRate;
	/** 
	 * 关卡得分 
	 */
	@ApiModelProperty(value = "关卡得分")
	private Integer score;
	/** 
	 * 答题详情 
	 */
	@ApiModelProperty(value = "答题详情")
	private String details;
	/** 
	 * 开始时间 
	 */
	@ApiModelProperty(value = "开始时间起")
    private Date startTimeBegin;
	@ApiModelProperty(value = "开始时间至")
	private Date startTimeEnd;
	/** 
	 * 闯关时间 
	 */
	@ApiModelProperty(value = "闯关时间")
	private Long levelTime;
	/** 
	 * 剩余时间 
	 */
	@ApiModelProperty(value = "剩余时间")
	private Long retainTime;
	/** 
	 * 当前问题索引 
	 */
	@ApiModelProperty(value = "当前问题索引")
	private Integer curQuestion;
	/** 
	 * 提交状态 -1未提交， 0 正常提交， 1缓存未提交， 2 缓存提交 3 时间到强制提交 
	 */
	@ApiModelProperty(value = "提交状态 -1未提交， 0 正常提交， 1缓存未提交， 2 缓存提交 3 时间到强制提交")
	private Integer status;
	/** 
	 * 创建时间 
	 */
	@ApiModelProperty(value = "创建时间起")
    private Date gmtCreateTimeBegin;
	@ApiModelProperty(value = "创建时间至")
	private Date gmtCreateTimeEnd;
	/** 
	 * 创建人 
	 */
	@ApiModelProperty(value = "创建人")
	private String gmtCreate;
	/** 
	 * 更新时间 
	 */
	@ApiModelProperty(value = "更新时间起")
    private Date gmtUpdateTimeBegin;
	@ApiModelProperty(value = "更新时间至")
	private Date gmtUpdateTimeEnd;
	/** 
	 * 更新人 
	 */
	@ApiModelProperty(value = "更新人")
	private String gmtUpdate;

    private static final BiRecordColumn.BiRecord biRecord = BiRecordColumn.biRecord;

    /**
     * 获得查询条件
     *
     * @return
     */
    @Override
    public QueryDSL query() {
        return query(biRecord)
			.ifEqual(getUserId(), biRecord.userId)
			.ifEqual(getLevelId(), biRecord.levelId)
			.ifEqual(getPass(), biRecord.pass)
			.ifEqual(getCorrectRate(), biRecord.correctRate)
			.ifEqual(getScore(), biRecord.score)
			.ifEqual(getDetails(), biRecord.details)
			.ifGreaterThanOrEqual(getStartTimeBegin(), biRecord.startTime)
			.ifLessThanOrEqual(getStartTimeEnd(), biRecord.startTime)
			.ifEqual(getLevelTime(), biRecord.levelTime)
			.ifEqual(getRetainTime(), biRecord.retainTime)
			.ifEqual(getCurQuestion(), biRecord.curQuestion)
			.ifEqual(getStatus(), biRecord.status)
			.ifGreaterThanOrEqual(getGmtCreateTimeBegin(), biRecord.gmtCreateTime)
			.ifLessThanOrEqual(getGmtCreateTimeEnd(), biRecord.gmtCreateTime)
			.ifEqual(getGmtCreate(), biRecord.gmtCreate)
			.ifGreaterThanOrEqual(getGmtUpdateTimeBegin(), biRecord.gmtUpdateTime)
			.ifLessThanOrEqual(getGmtUpdateTimeEnd(), biRecord.gmtUpdateTime)
			.ifEqual(getGmtUpdate(), biRecord.gmtUpdate);

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
	public RecordQuery setUserId(Long value) {
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
	public RecordQuery setLevelId(Long value) {
		this.levelId = value;
        return this;
	}
	
	/** 
	 * 获取[淘汰状态， -1 未到关卡淘汰，0 通过，1 淘汰]
	 */
	public Integer getPass() {
		return this.pass;
	}
	
	/** 
	 * 设置[淘汰状态， -1 未到关卡淘汰，0 通过，1 淘汰]
	 */
	public RecordQuery setPass(Integer value) {
		this.pass = value;
        return this;
	}
	
	/** 
	 * 获取[正确率]
	 */
	public Float getCorrectRate() {
		return this.correctRate;
	}
	
	/** 
	 * 设置[正确率]
	 */
	public RecordQuery setCorrectRate(Float value) {
		this.correctRate = value;
        return this;
	}
	
	/** 
	 * 获取[关卡得分]
	 */
	public Integer getScore() {
		return this.score;
	}
	
	/** 
	 * 设置[关卡得分]
	 */
	public RecordQuery setScore(Integer value) {
		this.score = value;
        return this;
	}
	
	/** 
	 * 获取[答题详情]
	 */
	public String getDetails() {
		return this.details;
	}
	
	/** 
	 * 设置[答题详情]
	 */
	public RecordQuery setDetails(String value) {
		this.details = value;
        return this;
	}
	
	/** 
	 * 获取[开始时间]范围起点
	 */
	public Date getStartTimeBegin() {
		return this.startTimeBegin;
	}
	
	/** 
	 * 获取[开始时间]范围起点
	 */
	public RecordQuery setStartTimeBegin(Date value) {
		this.startTimeBegin = value;
        return this;
	}	
	
	/** 
	 * 获取[开始时间]范围终点
	 */
	public Date getStartTimeEnd() {
		return this.startTimeEnd;
	}
	
	/** 
	 * 获取[开始时间]范围终点
	 */
	public RecordQuery setStartTimeEnd(Date value) {
		this.startTimeEnd = value;
        return this;
	}
	
	/** 
	 * 获取[闯关时间]
	 */
	public Long getLevelTime() {
		return this.levelTime;
	}
	
	/** 
	 * 设置[闯关时间]
	 */
	public RecordQuery setLevelTime(Long value) {
		this.levelTime = value;
        return this;
	}
	
	/** 
	 * 获取[剩余时间]
	 */
	public Long getRetainTime() {
		return this.retainTime;
	}
	
	/** 
	 * 设置[剩余时间]
	 */
	public RecordQuery setRetainTime(Long value) {
		this.retainTime = value;
        return this;
	}
	
	/** 
	 * 获取[当前问题索引]
	 */
	public Integer getCurQuestion() {
		return this.curQuestion;
	}
	
	/** 
	 * 设置[当前问题索引]
	 */
	public RecordQuery setCurQuestion(Integer value) {
		this.curQuestion = value;
        return this;
	}
	
	/** 
	 * 获取[提交状态 -1未提交， 0 正常提交， 1缓存未提交， 2 缓存提交 3 时间到强制提交]
	 */
	public Integer getStatus() {
		return this.status;
	}
	
	/** 
	 * 设置[提交状态 -1未提交， 0 正常提交， 1缓存未提交， 2 缓存提交 3 时间到强制提交]
	 */
	public RecordQuery setStatus(Integer value) {
		this.status = value;
        return this;
	}
	
	/** 
	 * 获取[创建时间]范围起点
	 */
	public Date getGmtCreateTimeBegin() {
		return this.gmtCreateTimeBegin;
	}
	
	/** 
	 * 获取[创建时间]范围起点
	 */
	public RecordQuery setGmtCreateTimeBegin(Date value) {
		this.gmtCreateTimeBegin = value;
        return this;
	}	
	
	/** 
	 * 获取[创建时间]范围终点
	 */
	public Date getGmtCreateTimeEnd() {
		return this.gmtCreateTimeEnd;
	}
	
	/** 
	 * 获取[创建时间]范围终点
	 */
	public RecordQuery setGmtCreateTimeEnd(Date value) {
		this.gmtCreateTimeEnd = value;
        return this;
	}
	
	/** 
	 * 获取[创建人]
	 */
	public String getGmtCreate() {
		return this.gmtCreate;
	}
	
	/** 
	 * 设置[创建人]
	 */
	public RecordQuery setGmtCreate(String value) {
		this.gmtCreate = value;
        return this;
	}
	
	/** 
	 * 获取[更新时间]范围起点
	 */
	public Date getGmtUpdateTimeBegin() {
		return this.gmtUpdateTimeBegin;
	}
	
	/** 
	 * 获取[更新时间]范围起点
	 */
	public RecordQuery setGmtUpdateTimeBegin(Date value) {
		this.gmtUpdateTimeBegin = value;
        return this;
	}	
	
	/** 
	 * 获取[更新时间]范围终点
	 */
	public Date getGmtUpdateTimeEnd() {
		return this.gmtUpdateTimeEnd;
	}
	
	/** 
	 * 获取[更新时间]范围终点
	 */
	public RecordQuery setGmtUpdateTimeEnd(Date value) {
		this.gmtUpdateTimeEnd = value;
        return this;
	}
	
	/** 
	 * 获取[更新人]
	 */
	public String getGmtUpdate() {
		return this.gmtUpdate;
	}
	
	/** 
	 * 设置[更新人]
	 */
	public RecordQuery setGmtUpdate(String value) {
		this.gmtUpdate = value;
        return this;
	}
	


}
