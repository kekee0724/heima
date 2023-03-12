package cn.bipark.reco.upms.model.viewmodel.other;

import cn.afterturn.easypoi.excel.annotation.Excel;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * 题目-导出VM
 */
@Data
public class QuestionExportVM {

	/** 
	 * 题型 1 单选，2多选 
	 */
	@Excel(name = "题型 1 单选，2多选", orderNum = "0", width = 20)
	private Integer type;

	/** 
	 * 题目 
	 */
	@Excel(name = "题目", orderNum = "1", width = 20)
	private String content;

	/** 
	 * 答案 
	 */
	@Excel(name = "答案", orderNum = "2", width = 20)
	private String answer;

	/** 
	 * 选项 JSON存储 
	 */
	@Excel(name = "选项 JSON存储", orderNum = "3", width = 20)
	private String options;

	/** 
	 * 分值 
	 */
	@Excel(name = "分值", orderNum = "4", width = 20)
	private Integer score;

  

}
