package cn.bipark.reco.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName("bi_log")
public class Log {
    /**
     * id       db_column: id
     */
    private Long id;
    /**
     * 信息       db_column: info
     */
    private String info;
    /**
     * 创建时间       db_column: crete_date
     */
    private LocalDateTime creteDate;
}
