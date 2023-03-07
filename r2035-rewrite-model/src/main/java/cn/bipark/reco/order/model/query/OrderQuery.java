package cn.bipark.reco.order.model.query;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.query.BasePagedQuery;
import cn.bipark.reco.order.model.mapper.BiOrderColumn;
import java.math.BigDecimal;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "测试对象查询条件")
public class OrderQuery extends BasePagedQuery {

	/** 
	 * appName 
	 */
	@ApiModelProperty(value = "appName")
	private String appName;
	/** 
	 * appCode 
	 */
	@ApiModelProperty(value = "appCode")
	private String appCode;
	/** 
	 * moduleUrl 
	 */
	@ApiModelProperty(value = "moduleUrl")
	private String moduleUrl;
	/** 
	 * haveNav 
	 */
	@ApiModelProperty(value = "haveNav")
	private Boolean haveNav;
	/** 
	 * navType 
	 */
	@ApiModelProperty(value = "navType")
	private Integer navType;
	/** 
	 * isBuiltIn 
	 */
	@ApiModelProperty(value = "isBuiltIn")
	private Boolean isBuiltIn;
	/** 
	 * isVirtual 
	 */
	@ApiModelProperty(value = "isVirtual")
	private Boolean isVirtual;
	/** 
	 * iconUrl 
	 */
	@ApiModelProperty(value = "iconUrl")
	private String iconUrl;
	/** 
	 * isValid 
	 */
	@ApiModelProperty(value = "isValid")
	private Boolean isValid;
	/** 
	 * sequence 
	 */
	@ApiModelProperty(value = "sequence")
	private Integer sequence;
	/** 
	 * remarks 
	 */
	@ApiModelProperty(value = "remarks")
	private String remarks;
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
	 * badgeUrl 
	 */
	@ApiModelProperty(value = "badgeUrl")
	private String badgeUrl;
	/** 
	 * badgeCode 
	 */
	@ApiModelProperty(value = "badgeCode")
	private String badgeCode;

    private static final BiOrderColumn.BiOrder biOrder = BiOrderColumn.biOrder;

    /**
     * 获得查询条件
     *
     * @return
     */
    @Override
    public QueryDSL query() {
        return query(biOrder)
			.ifEqual(getAppName(), biOrder.appName)
			.ifEqual(getAppCode(), biOrder.appCode)
			.ifEqual(getModuleUrl(), biOrder.moduleUrl)
			.ifEqual(getHaveNav(), biOrder.haveNav)
			.ifEqual(getNavType(), biOrder.navType)
			.ifEqual(getIsBuiltIn(), biOrder.isBuiltIn)
			.ifEqual(getIsVirtual(), biOrder.isVirtual)
			.ifEqual(getIconUrl(), biOrder.iconUrl)
			.ifEqual(getIsValid(), biOrder.isValid)
			.ifEqual(getSequence(), biOrder.sequence)
			.ifEqual(getRemarks(), biOrder.remarks)
			.ifEqual(getInputerId(), biOrder.inputerId)
			.ifGreaterThanOrEqual(getInputTimeBegin(), biOrder.inputTime)
			.ifLessThanOrEqual(getInputTimeEnd(), biOrder.inputTime)
			.ifEqual(getBadgeUrl(), biOrder.badgeUrl)
			.ifEqual(getBadgeCode(), biOrder.badgeCode);

    }

	/** 
	 * 获取[appName]
	 */
	public String getAppName() {
		return this.appName;
	}
	
	/** 
	 * 设置[appName]
	 */
	public OrderQuery setAppName(String value) {
		this.appName = value;
        return this;
	}
	
	/** 
	 * 获取[appCode]
	 */
	public String getAppCode() {
		return this.appCode;
	}
	
	/** 
	 * 设置[appCode]
	 */
	public OrderQuery setAppCode(String value) {
		this.appCode = value;
        return this;
	}
	
	/** 
	 * 获取[moduleUrl]
	 */
	public String getModuleUrl() {
		return this.moduleUrl;
	}
	
	/** 
	 * 设置[moduleUrl]
	 */
	public OrderQuery setModuleUrl(String value) {
		this.moduleUrl = value;
        return this;
	}
	
	/** 
	 * 获取[haveNav]
	 */
	public Boolean getHaveNav() {
		return this.haveNav;
	}
	
	/** 
	 * 设置[haveNav]
	 */
	public OrderQuery setHaveNav(Boolean value) {
		this.haveNav = value;
        return this;
	}
	
	/** 
	 * 获取[navType]
	 */
	public Integer getNavType() {
		return this.navType;
	}
	
	/** 
	 * 设置[navType]
	 */
	public OrderQuery setNavType(Integer value) {
		this.navType = value;
        return this;
	}
	
	/** 
	 * 获取[isBuiltIn]
	 */
	public Boolean getIsBuiltIn() {
		return this.isBuiltIn;
	}
	
	/** 
	 * 设置[isBuiltIn]
	 */
	public OrderQuery setIsBuiltIn(Boolean value) {
		this.isBuiltIn = value;
        return this;
	}
	
	/** 
	 * 获取[isVirtual]
	 */
	public Boolean getIsVirtual() {
		return this.isVirtual;
	}
	
	/** 
	 * 设置[isVirtual]
	 */
	public OrderQuery setIsVirtual(Boolean value) {
		this.isVirtual = value;
        return this;
	}
	
	/** 
	 * 获取[iconUrl]
	 */
	public String getIconUrl() {
		return this.iconUrl;
	}
	
	/** 
	 * 设置[iconUrl]
	 */
	public OrderQuery setIconUrl(String value) {
		this.iconUrl = value;
        return this;
	}
	
	/** 
	 * 获取[isValid]
	 */
	public Boolean getIsValid() {
		return this.isValid;
	}
	
	/** 
	 * 设置[isValid]
	 */
	public OrderQuery setIsValid(Boolean value) {
		this.isValid = value;
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
	public OrderQuery setSequence(Integer value) {
		this.sequence = value;
        return this;
	}
	
	/** 
	 * 获取[remarks]
	 */
	public String getRemarks() {
		return this.remarks;
	}
	
	/** 
	 * 设置[remarks]
	 */
	public OrderQuery setRemarks(String value) {
		this.remarks = value;
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
	public OrderQuery setInputerId(Long value) {
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
	public OrderQuery setInputTimeBegin(Date value) {
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
	public OrderQuery setInputTimeEnd(Date value) {
		this.inputTimeEnd = value;
        return this;
	}
	
	/** 
	 * 获取[badgeUrl]
	 */
	public String getBadgeUrl() {
		return this.badgeUrl;
	}
	
	/** 
	 * 设置[badgeUrl]
	 */
	public OrderQuery setBadgeUrl(String value) {
		this.badgeUrl = value;
        return this;
	}
	
	/** 
	 * 获取[badgeCode]
	 */
	public String getBadgeCode() {
		return this.badgeCode;
	}
	
	/** 
	 * 设置[badgeCode]
	 */
	public OrderQuery setBadgeCode(String value) {
		this.badgeCode = value;
        return this;
	}
	


}
