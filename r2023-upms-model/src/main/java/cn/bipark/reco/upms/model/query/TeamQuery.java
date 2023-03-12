package cn.bipark.reco.upms.model.query;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.query.BasePagedQuery;
import cn.bipark.reco.upms.model.mapper.BiTeamColumn;
import java.math.BigDecimal;
import java.util.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "团队查询条件")
public class TeamQuery extends BasePagedQuery {

	/** 
	 * 团队名 
	 */
	@ApiModelProperty(value = "团队名")
	private String teamName;
	/** 
	 * 团队机构 
	 */
	@ApiModelProperty(value = "团队机构")
	private String teamOrg;

    private static final BiTeamColumn.BiTeam biTeam = BiTeamColumn.biTeam;

    /**
     * 获得查询条件
     *
     * @return
     */
    @Override
    public QueryDSL query() {
        return query(biTeam)
			.ifEqual(getTeamName(), biTeam.teamName)
			.ifEqual(getTeamOrg(), biTeam.teamOrg);

    }

	/** 
	 * 获取[团队名]
	 */
	public String getTeamName() {
		return this.teamName;
	}
	
	/** 
	 * 设置[团队名]
	 */
	public TeamQuery setTeamName(String value) {
		this.teamName = value;
        return this;
	}
	
	/** 
	 * 获取[团队机构]
	 */
	public String getTeamOrg() {
		return this.teamOrg;
	}
	
	/** 
	 * 设置[团队机构]
	 */
	public TeamQuery setTeamOrg(String value) {
		this.teamOrg = value;
        return this;
	}
	


}
