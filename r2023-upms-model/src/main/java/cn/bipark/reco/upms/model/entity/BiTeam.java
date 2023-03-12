package cn.bipark.reco.upms.model.entity;

import cn.bipark.reco.core.model.entity.Entity;
import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 团队 from DB table ： bi_team.
 */
@ApiModel(value = "团队")
@Data
public class BiTeam implements Entity {

	//columns START
    /**
     * id       db_column: id 
     */	
	@ApiModelProperty(value = "id", example = "1234567890123", dataType = "String")
	private Long id;
    /**
     * 团队名       db_column: team_name 
     */	
	@ApiModelProperty(value = "团队名", example = "测试用的中文内容")
	private String teamName;
    /**
     * 团队机构       db_column: team_org 
     */	
	@ApiModelProperty(value = "团队机构", example = "测试用的中文内容")
	private String teamOrg;
	//columns END


}