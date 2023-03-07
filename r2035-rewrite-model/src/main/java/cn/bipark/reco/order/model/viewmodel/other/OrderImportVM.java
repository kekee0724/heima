package cn.bipark.reco.order.model.viewmodel.other;

import cn.afterturn.easypoi.excel.annotation.Excel;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * 测试对象-导入VM
 */
@Data
public class OrderImportVM {

	/** 
	 * appName 
	 */
	@Excel(name = "appName", orderNum = "0", width = 20)
	private String appName;

	/** 
	 * appCode 
	 */
	@Excel(name = "appCode", orderNum = "1", width = 20)
	private String appCode;

	/** 
	 * moduleUrl 
	 */
	@Excel(name = "moduleUrl", orderNum = "2", width = 20)
	private String moduleUrl;

	/** 
	 * haveNav 
	 */
	@Excel(name = "haveNav", orderNum = "3", width = 20)
	private Boolean haveNav;

	/** 
	 * navType 
	 */
	@Excel(name = "navType", orderNum = "4", width = 20)
	private Integer navType;

	/** 
	 * isBuiltIn 
	 */
	@Excel(name = "isBuiltIn", orderNum = "5", width = 20)
	private Boolean isBuiltIn;

	/** 
	 * isVirtual 
	 */
	@Excel(name = "isVirtual", orderNum = "6", width = 20)
	private Boolean isVirtual;

	/** 
	 * iconUrl 
	 */
	@Excel(name = "iconUrl", orderNum = "7", width = 20)
	private String iconUrl;

	/** 
	 * isValid 
	 */
	@Excel(name = "isValid", orderNum = "8", width = 20)
	private Boolean isValid;

	/** 
	 * sequence 
	 */
	@Excel(name = "sequence", orderNum = "9", width = 20)
	private Integer sequence;

	/** 
	 * remarks 
	 */
	@Excel(name = "remarks", orderNum = "10", width = 20)
	private String remarks;

	/** 
	 * inputer 
	 */
	@Excel(name = "inputer", orderNum = "11", width = 20)
	private String inputer;

	/** 
	 * inputTime 
	 */
	@Excel(name = "inputTime", orderNum = "12", width = 20, format = "yyyy-MM-dd")
	private Date inputTime;

	/** 
	 * badgeUrl 
	 */
	@Excel(name = "badgeUrl", orderNum = "13", width = 20)
	private String badgeUrl;

	/** 
	 * badgeCode 
	 */
	@Excel(name = "badgeCode", orderNum = "14", width = 20)
	private String badgeCode;

  

}
