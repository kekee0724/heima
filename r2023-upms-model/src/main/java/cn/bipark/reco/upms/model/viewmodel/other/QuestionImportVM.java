package cn.bipark.reco.upms.model.viewmodel.other;

import cn.afterturn.easypoi.excel.annotation.Excel;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * 题目-导入VM
 */
@Data
public class QuestionImportVM {

	/** 
	 * logicalType 
	 */
	@Excel(name = "logicalType", orderNum = "0", width = 20)
	private Integer logicalType;

	/** 
	 * businessType 
	 */
	@Excel(name = "businessType", orderNum = "1", width = 20)
	private Integer businessType;

	/** 
	 * sequence 
	 */
	@Excel(name = "sequence", orderNum = "2", width = 20)
	private Integer sequence;

	/** 
	 * isLibrary 
	 */
	@Excel(name = "isLibrary", orderNum = "3", width = 20)
	private Boolean isLibrary;

	/** 
	 * isBuiltin 
	 */
	@Excel(name = "isBuiltin", orderNum = "4", width = 20)
	private Boolean isBuiltin;

	/** 
	 * description 
	 */
	@Excel(name = "description", orderNum = "5", width = 20)
	private String description;

	/** 
	 * inputer 
	 */
	@Excel(name = "inputer", orderNum = "6", width = 20)
	private String inputer;

	/** 
	 * inputTime 
	 */
	@Excel(name = "inputTime", orderNum = "7", width = 20, format = "yyyy-MM-dd")
	private Date inputTime;

	/** 
	 * title 
	 */
	@Excel(name = "title", orderNum = "8", width = 20)
	private String title;

	/** 
	 * 题型 1 单选，2多选 
	 */
	@Excel(name = "题型 1 单选，2多选", orderNum = "9", width = 20)
	private Integer type;

	/** 
	 * 题目 
	 */
	@Excel(name = "题目", orderNum = "10", width = 20)
	private String content;

	/** 
	 * 答案 
	 */
	@Excel(name = "答案", orderNum = "11", width = 20)
	private String answer;

	/** 
	 * 选项 JSON存储 
	 */
	@Excel(name = "选项 JSON存储", orderNum = "12", width = 20)
	private String options;

	/** 
	 * 分值 
	 */
	@Excel(name = "分值", orderNum = "13", width = 20)
	private Integer score;

  

}
