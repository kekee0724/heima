package cn.bipark.reco.upms.model.viewmodel.other;

import cn.afterturn.easypoi.excel.annotation.Excel;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * 答题记录-导入VM
 */
@Data
public class RecordImportVM {

	/** 
	 * 淘汰状态， -1 未到关卡淘汰，0 通过，1 淘汰 
	 */
	@Excel(name = "淘汰状态， -1 未到关卡淘汰，0 通过，1 淘汰", orderNum = "0", width = 20)
	private Integer pass;

	/** 
	 * 正确率 
	 */
	@Excel(name = "正确率", orderNum = "1", width = 20)
	private Float correctRate;

	/** 
	 * 关卡得分 
	 */
	@Excel(name = "关卡得分", orderNum = "2", width = 20)
	private Integer score;

	/** 
	 * 答题详情 
	 */
	@Excel(name = "答题详情", orderNum = "3", width = 20)
	private String details;

	/** 
	 * 开始时间 
	 */
	@Excel(name = "开始时间", orderNum = "4", width = 20, format = "yyyy-MM-dd")
	private Date startTime;

	/** 
	 * 闯关时间 
	 */
	@Excel(name = "闯关时间", orderNum = "5", width = 20)
	private Long levelTime;

	/** 
	 * 剩余时间 
	 */
	@Excel(name = "剩余时间", orderNum = "6", width = 20)
	private Long retainTime;

	/** 
	 * 当前问题索引 
	 */
	@Excel(name = "当前问题索引", orderNum = "7", width = 20)
	private Integer curQuestion;

	/** 
	 * 提交状态 -1未提交， 0 正常提交， 1缓存未提交， 2 缓存提交 3 时间到强制提交 
	 */
	@Excel(name = "提交状态 -1未提交， 0 正常提交， 1缓存未提交， 2 缓存提交 3 时间到强制提交", orderNum = "8", width = 20)
	private Integer status;

	/** 
	 * 创建时间 
	 */
	@Excel(name = "创建时间", orderNum = "9", width = 20, format = "yyyy-MM-dd")
	private Date gmtCreateTime;

	/** 
	 * 创建人 
	 */
	@Excel(name = "创建人", orderNum = "10", width = 20)
	private String gmtCreate;

	/** 
	 * 更新时间 
	 */
	@Excel(name = "更新时间", orderNum = "11", width = 20, format = "yyyy-MM-dd")
	private Date gmtUpdateTime;

	/** 
	 * 更新人 
	 */
	@Excel(name = "更新人", orderNum = "12", width = 20)
	private String gmtUpdate;

  

}
