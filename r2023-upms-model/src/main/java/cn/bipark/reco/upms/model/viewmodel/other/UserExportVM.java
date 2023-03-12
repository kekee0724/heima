package cn.bipark.reco.upms.model.viewmodel.other;

import cn.afterturn.easypoi.excel.annotation.Excel;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * 用户-导出VM
 */
@Data
public class UserExportVM {

	/** 
	 * 用户名 
	 */
	@Excel(name = "用户名", orderNum = "0", width = 20)
	private String username;

	/** 
	 * 密码 
	 */
	@Excel(name = "密码", orderNum = "1", width = 20)
	private String password;

	/** 
	 * 昵称 
	 */
	@Excel(name = "昵称", orderNum = "2", width = 20)
	private String nick;

	/** 
	 * 邮箱 
	 */
	@Excel(name = "邮箱", orderNum = "3", width = 20)
	private String email;

	/** 
	 * 手机 
	 */
	@Excel(name = "手机", orderNum = "4", width = 20)
	private String phone;

	/** 
	 * 团队 
	 */
	@Excel(name = "团队", orderNum = "5", width = 20)
	private String team;

  

}
