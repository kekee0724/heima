package cn.bipark.reco.upms.model.query;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.query.BasePagedQuery;
import cn.bipark.reco.upms.model.mapper.BiUserColumn;
import java.math.BigDecimal;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "用户查询条件")
public class UserQuery extends BasePagedQuery {

	/** 
	 * 用户名 
	 */
	@ApiModelProperty(value = "用户名")
	private String username;
	/** 
	 * 密码 
	 */
	@ApiModelProperty(value = "密码")
	private String password;
	/** 
	 * 昵称 
	 */
	@ApiModelProperty(value = "昵称")
	private String nick;
	/** 
	 * 邮箱 
	 */
	@ApiModelProperty(value = "邮箱")
	private String email;
	/** 
	 * 手机 
	 */
	@ApiModelProperty(value = "手机")
	private String phone;
	/** 
	 * 团队 
	 */
	@ApiModelProperty(value = "团队")
	private String team;

    private static final BiUserColumn.BiUser biUser = BiUserColumn.biUser;

    /**
     * 获得查询条件
     *
     * @return
     */
    @Override
    public QueryDSL query() {
        return query(biUser)
			.ifEqual(getUsername(), biUser.username)
			.ifEqual(getPassword(), biUser.password)
			.ifEqual(getNick(), biUser.nick)
			.ifEqual(getEmail(), biUser.email)
			.ifEqual(getPhone(), biUser.phone)
			.ifEqual(getTeam(), biUser.team);

    }

	/** 
	 * 获取[用户名]
	 */
	public String getUsername() {
		return this.username;
	}
	
	/** 
	 * 设置[用户名]
	 */
	public UserQuery setUsername(String value) {
		this.username = value;
        return this;
	}
	
	/** 
	 * 获取[密码]
	 */
	public String getPassword() {
		return this.password;
	}
	
	/** 
	 * 设置[密码]
	 */
	public UserQuery setPassword(String value) {
		this.password = value;
        return this;
	}
	
	/** 
	 * 获取[昵称]
	 */
	public String getNick() {
		return this.nick;
	}
	
	/** 
	 * 设置[昵称]
	 */
	public UserQuery setNick(String value) {
		this.nick = value;
        return this;
	}
	
	/** 
	 * 获取[邮箱]
	 */
	public String getEmail() {
		return this.email;
	}
	
	/** 
	 * 设置[邮箱]
	 */
	public UserQuery setEmail(String value) {
		this.email = value;
        return this;
	}
	
	/** 
	 * 获取[手机]
	 */
	public String getPhone() {
		return this.phone;
	}
	
	/** 
	 * 设置[手机]
	 */
	public UserQuery setPhone(String value) {
		this.phone = value;
        return this;
	}
	
	/** 
	 * 获取[团队]
	 */
	public String getTeam() {
		return this.team;
	}
	
	/** 
	 * 设置[团队]
	 */
	public UserQuery setTeam(String value) {
		this.team = value;
        return this;
	}
	


}
