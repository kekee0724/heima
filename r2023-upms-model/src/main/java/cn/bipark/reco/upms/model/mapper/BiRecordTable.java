package cn.bipark.reco.upms.model.mapper;

import static cn.bipark.reco.upms.model.mapper.BiRecordColumn.*;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import cn.bipark.reco.core.model.mapper.GeneralMapper;
import cn.bipark.reco.upms.model.entity.BiRecord;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import javax.annotation.Generated;
import org.apache.ibatis.annotations.DeleteProvider;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.type.JdbcType;
import org.mybatis.dynamic.sql.BasicColumn;
import org.mybatis.dynamic.sql.SqlTable;
import org.mybatis.dynamic.sql.delete.DeleteDSLCompleter;
import org.mybatis.dynamic.sql.delete.render.DeleteStatementProvider;
import org.mybatis.dynamic.sql.insert.render.InsertStatementProvider;
import org.mybatis.dynamic.sql.insert.render.MultiRowInsertStatementProvider;
import org.mybatis.dynamic.sql.select.CountDSLCompleter;
import org.mybatis.dynamic.sql.select.SelectDSLCompleter;
import org.mybatis.dynamic.sql.select.render.SelectStatementProvider;
import org.mybatis.dynamic.sql.update.UpdateDSL;
import org.mybatis.dynamic.sql.update.UpdateDSLCompleter;
import org.mybatis.dynamic.sql.update.UpdateModel;
import org.mybatis.dynamic.sql.update.render.UpdateStatementProvider;
import org.mybatis.dynamic.sql.util.SqlProviderAdapter;
import org.mybatis.dynamic.sql.util.mybatis3.MyBatis3Utils;

public interface BiRecordTable extends GeneralMapper<BiRecord> {
    
    BasicColumn[] selectList = BasicColumn.columnList(
		id,
		userId,
		levelId,
		pass,
		correctRate,
		score,
		details,
		startTime,
		levelTime,
		retainTime,
		curQuestion,
		status,
		gmtCreateTime,
		gmtCreate,
		gmtUpdateTime,
		gmtUpdate
        );

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    int insert(InsertStatementProvider<BiRecord> insertStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insertMultiple")
    int insertMultiple(MultiRowInsertStatementProvider<BiRecord> multipleInsertStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("BiRecordResult")
    Optional<BiRecord> selectOne(SelectStatementProvider selectStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="BiRecordResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="user_id", property="userId", jdbcType=JdbcType.BIGINT),
        @Result(column="level_id", property="levelId", jdbcType=JdbcType.BIGINT),
        @Result(column="pass", property="pass", jdbcType=JdbcType.INTEGER),
        @Result(column="correct_rate", property="correctRate", jdbcType=JdbcType.REAL),
        @Result(column="score", property="score", jdbcType=JdbcType.INTEGER),
        @Result(column="details", property="details", jdbcType=JdbcType.LONGVARCHAR),
        @Result(column="start_time", property="startTime", jdbcType=JdbcType.TIMESTAMP),
        @Result(column="level_time", property="levelTime", jdbcType=JdbcType.BIGINT),
        @Result(column="retain_time", property="retainTime", jdbcType=JdbcType.BIGINT),
        @Result(column="cur_question", property="curQuestion", jdbcType=JdbcType.INTEGER),
        @Result(column="status", property="status", jdbcType=JdbcType.INTEGER),
        @Result(column="gmt_create_time", property="gmtCreateTime", jdbcType=JdbcType.TIMESTAMP),
        @Result(column="gmt_create", property="gmtCreate", jdbcType=JdbcType.VARCHAR),
        @Result(column="gmt_update_time", property="gmtUpdateTime", jdbcType=JdbcType.TIMESTAMP),
        @Result(column="gmt_update", property="gmtUpdate", jdbcType=JdbcType.VARCHAR)
    })
    List<BiRecord> selectMany(SelectStatementProvider selectStatement);

    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    default long count(CountDSLCompleter completer) {
        return MyBatis3Utils.countFrom(this::count, biRecord, completer);
    }

    default int delete(DeleteDSLCompleter completer) {
        return MyBatis3Utils.deleteFrom(this::delete, biRecord, completer);
    }

    default int deleteByPrimaryKey(Long id_) {
        return delete(c -> 
            c.where(id, isEqualTo(id_))
        );
    }

    default int insert(BiRecord record) {
        return MyBatis3Utils.insert(this::insert, record, biRecord, c ->
            c
            .map(id).toProperty("id")
            .map(userId).toProperty("userId")
            .map(levelId).toProperty("levelId")
            .map(pass).toProperty("pass")
            .map(correctRate).toProperty("correctRate")
            .map(score).toProperty("score")
            .map(details).toProperty("details")
            .map(startTime).toProperty("startTime")
            .map(levelTime).toProperty("levelTime")
            .map(retainTime).toProperty("retainTime")
            .map(curQuestion).toProperty("curQuestion")
            .map(status).toProperty("status")
            .map(gmtCreateTime).toProperty("gmtCreateTime")
            .map(gmtCreate).toProperty("gmtCreate")
            .map(gmtUpdateTime).toProperty("gmtUpdateTime")
            .map(gmtUpdate).toProperty("gmtUpdate")
        );
    }

    default int insertMultiple(Collection<BiRecord> records) {
        return MyBatis3Utils.insertMultiple(this::insertMultiple, records, biRecord, c ->
            c
            .map(id).toProperty("id")
            .map(userId).toProperty("userId")
            .map(levelId).toProperty("levelId")
            .map(pass).toProperty("pass")
            .map(correctRate).toProperty("correctRate")
            .map(score).toProperty("score")
            .map(details).toProperty("details")
            .map(startTime).toProperty("startTime")
            .map(levelTime).toProperty("levelTime")
            .map(retainTime).toProperty("retainTime")
            .map(curQuestion).toProperty("curQuestion")
            .map(status).toProperty("status")
            .map(gmtCreateTime).toProperty("gmtCreateTime")
            .map(gmtCreate).toProperty("gmtCreate")
            .map(gmtUpdateTime).toProperty("gmtUpdateTime")
            .map(gmtUpdate).toProperty("gmtUpdate")
        );
    }

    default int insertSelective(BiRecord record) {
        return MyBatis3Utils.insert(this::insert, record, biRecord, c ->
            c
            .map(id).toPropertyWhenPresent("id", record::getId)
            .map(userId).toPropertyWhenPresent("userId", record::getUserId)
            .map(levelId).toPropertyWhenPresent("levelId", record::getLevelId)
            .map(pass).toPropertyWhenPresent("pass", record::getPass)
            .map(correctRate).toPropertyWhenPresent("correctRate", record::getCorrectRate)
            .map(score).toPropertyWhenPresent("score", record::getScore)
            .map(details).toPropertyWhenPresent("details", record::getDetails)
            .map(startTime).toPropertyWhenPresent("startTime", record::getStartTime)
            .map(levelTime).toPropertyWhenPresent("levelTime", record::getLevelTime)
            .map(retainTime).toPropertyWhenPresent("retainTime", record::getRetainTime)
            .map(curQuestion).toPropertyWhenPresent("curQuestion", record::getCurQuestion)
            .map(status).toPropertyWhenPresent("status", record::getStatus)
            .map(gmtCreateTime).toPropertyWhenPresent("gmtCreateTime", record::getGmtCreateTime)
            .map(gmtCreate).toPropertyWhenPresent("gmtCreate", record::getGmtCreate)
            .map(gmtUpdateTime).toPropertyWhenPresent("gmtUpdateTime", record::getGmtUpdateTime)
            .map(gmtUpdate).toPropertyWhenPresent("gmtUpdate", record::getGmtUpdate)
        );
    }

    default Optional<BiRecord> selectOne(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectOne(this::selectOne, selectList, biRecord, completer);
    }

    default List<BiRecord> select(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectList(this::selectMany, selectList, biRecord, completer);
    }

    default List<BiRecord> selectDistinct(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectDistinct(this::selectMany, selectList, biRecord, completer);
    }

    default Optional<BiRecord> selectByPrimaryKey(Long id_) {
        return selectOne(c ->
            c.where(id, isEqualTo(id_))
        );
    }

    default int update(UpdateDSLCompleter completer) {
        return MyBatis3Utils.update(this::update, biRecord, completer);
    }

    default UpdateDSL<UpdateModel> updateAllColumns(BiRecord record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalTo(record::getId)
            .set(userId).equalTo(record::getUserId)
            .set(levelId).equalTo(record::getLevelId)
            .set(pass).equalTo(record::getPass)
            .set(correctRate).equalTo(record::getCorrectRate)
            .set(score).equalTo(record::getScore)
            .set(details).equalTo(record::getDetails)
            .set(startTime).equalTo(record::getStartTime)
            .set(levelTime).equalTo(record::getLevelTime)
            .set(retainTime).equalTo(record::getRetainTime)
            .set(curQuestion).equalTo(record::getCurQuestion)
            .set(status).equalTo(record::getStatus)
            .set(gmtCreateTime).equalTo(record::getGmtCreateTime)
            .set(gmtCreate).equalTo(record::getGmtCreate)
            .set(gmtUpdateTime).equalTo(record::getGmtUpdateTime)
            .set(gmtUpdate).equalTo(record::getGmtUpdate);
    }

    default UpdateDSL<UpdateModel> updateSelectiveColumns(BiRecord record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalToWhenPresent(record::getId)
            .set(userId).equalToWhenPresent(record::getUserId)
            .set(levelId).equalToWhenPresent(record::getLevelId)
            .set(pass).equalToWhenPresent(record::getPass)
            .set(correctRate).equalToWhenPresent(record::getCorrectRate)
            .set(score).equalToWhenPresent(record::getScore)
            .set(details).equalToWhenPresent(record::getDetails)
            .set(startTime).equalToWhenPresent(record::getStartTime)
            .set(levelTime).equalToWhenPresent(record::getLevelTime)
            .set(retainTime).equalToWhenPresent(record::getRetainTime)
            .set(curQuestion).equalToWhenPresent(record::getCurQuestion)
            .set(status).equalToWhenPresent(record::getStatus)
            .set(gmtCreateTime).equalToWhenPresent(record::getGmtCreateTime)
            .set(gmtCreate).equalToWhenPresent(record::getGmtCreate)
            .set(gmtUpdateTime).equalToWhenPresent(record::getGmtUpdateTime)
            .set(gmtUpdate).equalToWhenPresent(record::getGmtUpdate);
    }

    default int updateByPrimaryKey(BiRecord record) {
        return update(c ->
            c
            .set(userId).equalTo(record::getUserId)
            .set(levelId).equalTo(record::getLevelId)
            .set(pass).equalTo(record::getPass)
            .set(correctRate).equalTo(record::getCorrectRate)
            .set(score).equalTo(record::getScore)
            .set(details).equalTo(record::getDetails)
            .set(startTime).equalTo(record::getStartTime)
            .set(levelTime).equalTo(record::getLevelTime)
            .set(retainTime).equalTo(record::getRetainTime)
            .set(curQuestion).equalTo(record::getCurQuestion)
            .set(status).equalTo(record::getStatus)
            .set(gmtCreateTime).equalTo(record::getGmtCreateTime)
            .set(gmtCreate).equalTo(record::getGmtCreate)
            .set(gmtUpdateTime).equalTo(record::getGmtUpdateTime)
            .set(gmtUpdate).equalTo(record::getGmtUpdate)
            .where(id, isEqualTo(record::getId))
        );
    }

    default int updateByPrimaryKeySelective(BiRecord record) {
        return update(c ->
            c
            .set(userId).equalToWhenPresent(record::getUserId)
            .set(levelId).equalToWhenPresent(record::getLevelId)
            .set(pass).equalToWhenPresent(record::getPass)
            .set(correctRate).equalToWhenPresent(record::getCorrectRate)
            .set(score).equalToWhenPresent(record::getScore)
            .set(details).equalToWhenPresent(record::getDetails)
            .set(startTime).equalToWhenPresent(record::getStartTime)
            .set(levelTime).equalToWhenPresent(record::getLevelTime)
            .set(retainTime).equalToWhenPresent(record::getRetainTime)
            .set(curQuestion).equalToWhenPresent(record::getCurQuestion)
            .set(status).equalToWhenPresent(record::getStatus)
            .set(gmtCreateTime).equalToWhenPresent(record::getGmtCreateTime)
            .set(gmtCreate).equalToWhenPresent(record::getGmtCreate)
            .set(gmtUpdateTime).equalToWhenPresent(record::getGmtUpdateTime)
            .set(gmtUpdate).equalToWhenPresent(record::getGmtUpdate)
            .where(id, isEqualTo(record::getId))
        );
    }

    default SqlTable getDefinition() {
        return biRecord;
    }
}