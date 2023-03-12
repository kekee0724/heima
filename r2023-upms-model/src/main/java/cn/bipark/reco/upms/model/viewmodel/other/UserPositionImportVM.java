package cn.bipark.reco.upms.model.viewmodel.other;

import cn.afterturn.easypoi.excel.annotation.Excel;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * 用户定位-导入VM
 */
@Data
public class UserPositionImportVM {

	/** 
	 * 姓名 
	 */
	@Excel(name = "姓名", orderNum = "0", width = 20)
	private String username;

	/** 
	 * 纬度 
	 */
	@Excel(name = "纬度", orderNum = "1", width = 20)
	private String lat;

	/** 
	 * 经度 
	 */
	@Excel(name = "经度", orderNum = "2", width = 20)
	private String lng;

  

}
