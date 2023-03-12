package cn.bipark.reco.upms.model.query;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.query.BasePagedQuery;
import cn.bipark.reco.upms.model.mapper.BiSystemParamColumn;
import java.math.BigDecimal;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "系统参数查询条件")
public class SystemParamQuery extends BasePagedQuery {

	/** 
	 * key值 
	 */
	@ApiModelProperty(value = "key值")
	private String paramKey;
	/** 
	 * value值 
	 */
	@ApiModelProperty(value = "value值")
	private String paramValue;
	/** 
	 * 创建人 
	 */
	@ApiModelProperty(value = "创建人")
	private String gmtCreate;
	/** 
	 * 修改时间 
	 */
	@ApiModelProperty(value = "修改时间起")
    private Date gmtUpdateTimeBegin;
	@ApiModelProperty(value = "修改时间至")
	private Date gmtUpdateTimeEnd;
	/** 
	 * 修改人 
	 */
	@ApiModelProperty(value = "修改人")
	private String gmtUpdate;
	/** 
	 * 创建时间 
	 */
	@ApiModelProperty(value = "创建时间起")
    private Date gmtCreateTimeBegin;
	@ApiModelProperty(value = "创建时间至")
	private Date gmtCreateTimeEnd;

    private static final BiSystemParamColumn.BiSystemParam biSystemParam = BiSystemParamColumn.biSystemParam;

    /**
     * 获得查询条件
     *
     * @return
     */
    @Override
    public QueryDSL query() {
        return query(biSystemParam)
			.ifEqual(getParamKey(), biSystemParam.paramKey)
			.ifEqual(getParamValue(), biSystemParam.paramValue)
			.ifEqual(getGmtCreate(), biSystemParam.gmtCreate)
			.ifGreaterThanOrEqual(getGmtUpdateTimeBegin(), biSystemParam.gmtUpdateTime)
			.ifLessThanOrEqual(getGmtUpdateTimeEnd(), biSystemParam.gmtUpdateTime)
			.ifEqual(getGmtUpdate(), biSystemParam.gmtUpdate)
			.ifGreaterThanOrEqual(getGmtCreateTimeBegin(), biSystemParam.gmtCreateTime)
			.ifLessThanOrEqual(getGmtCreateTimeEnd(), biSystemParam.gmtCreateTime);

    }

	/** 
	 * 获取[key值]
	 */
	public String getParamKey() {
		return this.paramKey;
	}
	
	/** 
	 * 设置[key值]
	 */
	public SystemParamQuery setParamKey(String value) {
		this.paramKey = value;
        return this;
	}
	
	/** 
	 * 获取[value值]
	 */
	public String getParamValue() {
		return this.paramValue;
	}
	
	/** 
	 * 设置[value值]
	 */
	public SystemParamQuery setParamValue(String value) {
		this.paramValue = value;
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
	public SystemParamQuery setGmtCreate(String value) {
		this.gmtCreate = value;
        return this;
	}
	
	/** 
	 * 获取[修改时间]范围起点
	 */
	public Date getGmtUpdateTimeBegin() {
		return this.gmtUpdateTimeBegin;
	}
	
	/** 
	 * 获取[修改时间]范围起点
	 */
	public SystemParamQuery setGmtUpdateTimeBegin(Date value) {
		this.gmtUpdateTimeBegin = value;
        return this;
	}	
	
	/** 
	 * 获取[修改时间]范围终点
	 */
	public Date getGmtUpdateTimeEnd() {
		return this.gmtUpdateTimeEnd;
	}
	
	/** 
	 * 获取[修改时间]范围终点
	 */
	public SystemParamQuery setGmtUpdateTimeEnd(Date value) {
		this.gmtUpdateTimeEnd = value;
        return this;
	}
	
	/** 
	 * 获取[修改人]
	 */
	public String getGmtUpdate() {
		return this.gmtUpdate;
	}
	
	/** 
	 * 设置[修改人]
	 */
	public SystemParamQuery setGmtUpdate(String value) {
		this.gmtUpdate = value;
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
	public SystemParamQuery setGmtCreateTimeBegin(Date value) {
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
	public SystemParamQuery setGmtCreateTimeEnd(Date value) {
		this.gmtCreateTimeEnd = value;
        return this;
	}
	


}
