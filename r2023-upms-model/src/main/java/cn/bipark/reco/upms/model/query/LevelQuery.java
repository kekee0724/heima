package cn.bipark.reco.upms.model.query;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.query.BasePagedQuery;
import cn.bipark.reco.upms.model.mapper.BiLevelColumn;
import java.math.BigDecimal;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "等级查询条件")
public class LevelQuery extends BasePagedQuery {

	/** 
	 * 闯关标题 
	 */
	@ApiModelProperty(value = "闯关标题")
	private String title;
	/** 
	 * 闯关内容 
	 */
	@ApiModelProperty(value = "闯关内容")
	private String content;
	/** 
	 * 封面图片 
	 */
	@ApiModelProperty(value = "封面图片")
	private String cover;
	/** 
	 * 开始时间 
	 */
	@ApiModelProperty(value = "开始时间起")
    private Date startTimeBegin;
	@ApiModelProperty(value = "开始时间至")
	private Date startTimeEnd;
	/** 
	 * 结束时间 
	 */
	@ApiModelProperty(value = "结束时间起")
    private Date endTimeBegin;
	@ApiModelProperty(value = "结束时间至")
	private Date endTimeEnd;
	/** 
	 * 挑战时间 
	 */
	@ApiModelProperty(value = "挑战时间")
	private Long retainTime;
	/** 
	 * 是否为当前关卡 
	 */
	@ApiModelProperty(value = "是否为当前关卡")
	private Integer isCurrent;

    private static final BiLevelColumn.BiLevel biLevel = BiLevelColumn.biLevel;

    /**
     * 获得查询条件
     *
     * @return
     */
    @Override
    public QueryDSL query() {
        return query(biLevel)
			.ifEqual(getTitle(), biLevel.title)
			.ifEqual(getContent(), biLevel.content)
			.ifEqual(getCover(), biLevel.cover)
			.ifGreaterThanOrEqual(getStartTimeBegin(), biLevel.startTime)
			.ifLessThanOrEqual(getStartTimeEnd(), biLevel.startTime)
			.ifGreaterThanOrEqual(getEndTimeBegin(), biLevel.endTime)
			.ifLessThanOrEqual(getEndTimeEnd(), biLevel.endTime)
			.ifEqual(getRetainTime(), biLevel.retainTime)
			.ifEqual(getIsCurrent(), biLevel.isCurrent);

    }

	/** 
	 * 获取[闯关标题]
	 */
	public String getTitle() {
		return this.title;
	}
	
	/** 
	 * 设置[闯关标题]
	 */
	public LevelQuery setTitle(String value) {
		this.title = value;
        return this;
	}
	
	/** 
	 * 获取[闯关内容]
	 */
	public String getContent() {
		return this.content;
	}
	
	/** 
	 * 设置[闯关内容]
	 */
	public LevelQuery setContent(String value) {
		this.content = value;
        return this;
	}
	
	/** 
	 * 获取[封面图片]
	 */
	public String getCover() {
		return this.cover;
	}
	
	/** 
	 * 设置[封面图片]
	 */
	public LevelQuery setCover(String value) {
		this.cover = value;
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
	public LevelQuery setStartTimeBegin(Date value) {
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
	public LevelQuery setStartTimeEnd(Date value) {
		this.startTimeEnd = value;
        return this;
	}
	
	/** 
	 * 获取[结束时间]范围起点
	 */
	public Date getEndTimeBegin() {
		return this.endTimeBegin;
	}
	
	/** 
	 * 获取[结束时间]范围起点
	 */
	public LevelQuery setEndTimeBegin(Date value) {
		this.endTimeBegin = value;
        return this;
	}	
	
	/** 
	 * 获取[结束时间]范围终点
	 */
	public Date getEndTimeEnd() {
		return this.endTimeEnd;
	}
	
	/** 
	 * 获取[结束时间]范围终点
	 */
	public LevelQuery setEndTimeEnd(Date value) {
		this.endTimeEnd = value;
        return this;
	}
	
	/** 
	 * 获取[挑战时间]
	 */
	public Long getRetainTime() {
		return this.retainTime;
	}
	
	/** 
	 * 设置[挑战时间]
	 */
	public LevelQuery setRetainTime(Long value) {
		this.retainTime = value;
        return this;
	}
	
	/** 
	 * 获取[是否为当前关卡]
	 */
	public Integer getIsCurrent() {
		return this.isCurrent;
	}
	
	/** 
	 * 设置[是否为当前关卡]
	 */
	public LevelQuery setIsCurrent(Integer value) {
		this.isCurrent = value;
        return this;
	}
	


}
