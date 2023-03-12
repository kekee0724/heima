package cn.bipark.reco.upms.model.viewmodel.detail;

import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "用户-详情VM")
@Data
public class UserDetailVM {

	/** 
	 * id 
	 */
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
	/** 
	 * 用户名 
	 */
	@ApiModelProperty(value = "用户名", example = "测试用的中文内容")
	private String username;
	/** 
	 * 密码 
	 */
	@ApiModelProperty(value = "密码", example = "测试用的中文内容")
	private String password;
	/** 
	 * 昵称 
	 */
	@ApiModelProperty(value = "昵称", example = "测试用的中文内容")
	private String nick;
	/** 
	 * 邮箱 
	 */
	@ApiModelProperty(value = "邮箱", example = "test@163.com")
	private String email;
	/** 
	 * 手机 
	 */
	@ApiModelProperty(value = "手机", example = "13902119005")
	private String phone;
	/** 
	 * 团队 
	 */
	@ApiModelProperty(value = "团队", example = "测试用的中文内容")
	private String team;


}
