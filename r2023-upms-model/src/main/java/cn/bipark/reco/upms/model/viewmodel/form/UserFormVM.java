package cn.bipark.reco.upms.model.viewmodel.form;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel(value = "用户-表单VM")
@Data
public class UserFormVM {

	/** 
	 * 用户名 
	 */
	@Size(max = 50)
	@NotBlank(message = "用户名不能为空")
	@ApiModelProperty(value = "用户名", example = "测试用的中文内容", required = true)
	private String username;
	/** 
	 * 密码 
	 */
	@Size(max = 50)
	@NotBlank(message = "密码不能为空")
	@ApiModelProperty(value = "密码", example = "测试用的中文内容", required = true)
	private String password;
	/** 
	 * 昵称 
	 */
	@Size(max = 100)
	@NotBlank(message = "昵称不能为空")
	@ApiModelProperty(value = "昵称", example = "测试用的中文内容", required = true)
	private String nick;
	/** 
	 * 邮箱 
	 */
	@Size(max = 100)
	@ApiModelProperty(value = "邮箱", example = "test@163.com")
	private String email;
	/** 
	 * 手机 
	 */
	@Size(max = 50)
	@ApiModelProperty(value = "手机", example = "13902119005")
	private String phone;
	/** 
	 * 团队 
	 */
	@Size(max = 255)
	@ApiModelProperty(value = "团队", example = "测试用的中文内容")
	private String team;
  

}
