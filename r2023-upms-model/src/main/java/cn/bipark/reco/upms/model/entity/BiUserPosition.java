package cn.bipark.reco.upms.model.entity;

import cn.bipark.reco.core.model.entity.Entity;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 用户定位 from DB table ： bi_user_position.
 */
@ApiModel(value = "用户定位")
@Data
public class BiUserPosition implements Entity {

	//columns START
    /**
     * id       db_column: id 
     */	
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
    /**
     * 姓名       db_column: username 
     */	
	@ApiModelProperty(value = "姓名", example = "测试用的中文内容")
	private String username;
    /**
     * 纬度       db_column: lat 
     */	
	@ApiModelProperty(value = "纬度", example = "测试用的中文内容")
	private String lat;
    /**
     * 经度       db_column: lng 
     */	
	@ApiModelProperty(value = "经度", example = "测试用的中文内容")
	private String lng;
	//columns END


}