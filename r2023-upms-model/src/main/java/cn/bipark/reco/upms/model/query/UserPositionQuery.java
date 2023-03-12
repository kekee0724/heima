package cn.bipark.reco.upms.model.query;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.query.BasePagedQuery;
import cn.bipark.reco.upms.model.mapper.BiUserPositionColumn;
import java.math.BigDecimal;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "用户定位查询条件")
public class UserPositionQuery extends BasePagedQuery {

	/** 
	 * 姓名 
	 */
	@ApiModelProperty(value = "姓名")
	private String username;
	/** 
	 * 纬度 
	 */
	@ApiModelProperty(value = "纬度")
	private String lat;
	/** 
	 * 经度 
	 */
	@ApiModelProperty(value = "经度")
	private String lng;

    private static final BiUserPositionColumn.BiUserPosition biUserPosition = BiUserPositionColumn.biUserPosition;

    /**
     * 获得查询条件
     *
     * @return
     */
    @Override
    public QueryDSL query() {
        return query(biUserPosition)
			.ifEqual(getUsername(), biUserPosition.username)
			.ifEqual(getLat(), biUserPosition.lat)
			.ifEqual(getLng(), biUserPosition.lng);

    }

	/** 
	 * 获取[姓名]
	 */
	public String getUsername() {
		return this.username;
	}
	
	/** 
	 * 设置[姓名]
	 */
	public UserPositionQuery setUsername(String value) {
		this.username = value;
        return this;
	}
	
	/** 
	 * 获取[纬度]
	 */
	public String getLat() {
		return this.lat;
	}
	
	/** 
	 * 设置[纬度]
	 */
	public UserPositionQuery setLat(String value) {
		this.lat = value;
        return this;
	}
	
	/** 
	 * 获取[经度]
	 */
	public String getLng() {
		return this.lng;
	}
	
	/** 
	 * 设置[经度]
	 */
	public UserPositionQuery setLng(String value) {
		this.lng = value;
        return this;
	}
	


}
