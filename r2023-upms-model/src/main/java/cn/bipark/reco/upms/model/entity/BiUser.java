package cn.bipark.reco.upms.model.entity;

import cn.bipark.reco.core.model.entity.Entity;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 用户 from DB table ： bi_user.
 */
@ApiModel(value = "用户")
@Data
public class BiUser implements Entity {

	//columns START
    /**
     * id       db_column: id 
     */	
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
    /**
     * 用户名       db_column: username 
     */	
	@ApiModelProperty(value = "用户名", example = "测试用的中文内容")
	private String username;
    /**
     * 密码       db_column: password 
     */	
	@ApiModelProperty(value = "密码", example = "测试用的中文内容")
	private String password;
    /**
     * 昵称       db_column: nick 
     */	
	@ApiModelProperty(value = "昵称", example = "测试用的中文内容")
	private String nick;
    /**
     * 邮箱       db_column: email 
     */	
	@ApiModelProperty(value = "邮箱", example = "test@163.com")
	private String email;
    /**
     * 手机       db_column: phone 
     */	
	@ApiModelProperty(value = "手机", example = "13902119005")
	private String phone;
    /**
     * 团队       db_column: team 
     */	
	@ApiModelProperty(value = "团队", example = "测试用的中文内容")
	private String team;
	//columns END


}