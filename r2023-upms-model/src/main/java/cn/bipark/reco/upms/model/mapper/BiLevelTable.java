package cn.bipark.reco.upms.model.mapper;

import static cn.bipark.reco.upms.model.mapper.BiLevelColumn.*;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import cn.bipark.reco.core.model.mapper.GeneralMapper;
import cn.bipark.reco.upms.model.entity.BiLevel;
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

public interface BiLevelTable extends GeneralMapper<BiLevel> {
    
    BasicColumn[] selectList = BasicColumn.columnList(
		id,
		title,
		content,
		cover,
		startTime,
		endTime,
		retainTime,
		isCurrent
        );

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    int insert(InsertStatementProvider<BiLevel> insertStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insertMultiple")
    int insertMultiple(MultiRowInsertStatementProvider<BiLevel> multipleInsertStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("BiLevelResult")
    Optional<BiLevel> selectOne(SelectStatementProvider selectStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="BiLevelResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="title", property="title", jdbcType=JdbcType.VARCHAR),
        @Result(column="content", property="content", jdbcType=JdbcType.VARCHAR),
        @Result(column="cover", property="cover", jdbcType=JdbcType.VARCHAR),
        @Result(column="start_time", property="startTime", jdbcType=JdbcType.TIMESTAMP),
        @Result(column="end_time", property="endTime", jdbcType=JdbcType.TIMESTAMP),
        @Result(column="retain_time", property="retainTime", jdbcType=JdbcType.BIGINT),
        @Result(column="is_current", property="isCurrent", jdbcType=JdbcType.TINYINT)
    })
    List<BiLevel> selectMany(SelectStatementProvider selectStatement);

    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    default long count(CountDSLCompleter completer) {
        return MyBatis3Utils.countFrom(this::count, biLevel, completer);
    }

    default int delete(DeleteDSLCompleter completer) {
        return MyBatis3Utils.deleteFrom(this::delete, biLevel, completer);
    }

    default int deleteByPrimaryKey(Long id_) {
        return delete(c -> 
            c.where(id, isEqualTo(id_))
        );
    }

    default int insert(BiLevel record) {
        return MyBatis3Utils.insert(this::insert, record, biLevel, c ->
            c
            .map(id).toProperty("id")
            .map(title).toProperty("title")
            .map(content).toProperty("content")
            .map(cover).toProperty("cover")
            .map(startTime).toProperty("startTime")
            .map(endTime).toProperty("endTime")
            .map(retainTime).toProperty("retainTime")
            .map(isCurrent).toProperty("isCurrent")
        );
    }

    default int insertMultiple(Collection<BiLevel> records) {
        return MyBatis3Utils.insertMultiple(this::insertMultiple, records, biLevel, c ->
            c
            .map(id).toProperty("id")
            .map(title).toProperty("title")
            .map(content).toProperty("content")
            .map(cover).toProperty("cover")
            .map(startTime).toProperty("startTime")
            .map(endTime).toProperty("endTime")
            .map(retainTime).toProperty("retainTime")
            .map(isCurrent).toProperty("isCurrent")
        );
    }

    default int insertSelective(BiLevel record) {
        return MyBatis3Utils.insert(this::insert, record, biLevel, c ->
            c
            .map(id).toPropertyWhenPresent("id", record::getId)
            .map(title).toPropertyWhenPresent("title", record::getTitle)
            .map(content).toPropertyWhenPresent("content", record::getContent)
            .map(cover).toPropertyWhenPresent("cover", record::getCover)
            .map(startTime).toPropertyWhenPresent("startTime", record::getStartTime)
            .map(endTime).toPropertyWhenPresent("endTime", record::getEndTime)
            .map(retainTime).toPropertyWhenPresent("retainTime", record::getRetainTime)
            .map(isCurrent).toPropertyWhenPresent("isCurrent", record::getIsCurrent)
        );
    }

    default Optional<BiLevel> selectOne(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectOne(this::selectOne, selectList, biLevel, completer);
    }

    default List<BiLevel> select(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectList(this::selectMany, selectList, biLevel, completer);
    }

    default List<BiLevel> selectDistinct(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectDistinct(this::selectMany, selectList, biLevel, completer);
    }

    default Optional<BiLevel> selectByPrimaryKey(Long id_) {
        return selectOne(c ->
            c.where(id, isEqualTo(id_))
        );
    }

    default int update(UpdateDSLCompleter completer) {
        return MyBatis3Utils.update(this::update, biLevel, completer);
    }

    default UpdateDSL<UpdateModel> updateAllColumns(BiLevel record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalTo(record::getId)
            .set(title).equalTo(record::getTitle)
            .set(content).equalTo(record::getContent)
            .set(cover).equalTo(record::getCover)
            .set(startTime).equalTo(record::getStartTime)
            .set(endTime).equalTo(record::getEndTime)
            .set(retainTime).equalTo(record::getRetainTime)
            .set(isCurrent).equalTo(record::getIsCurrent);
    }

    default UpdateDSL<UpdateModel> updateSelectiveColumns(BiLevel record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalToWhenPresent(record::getId)
            .set(title).equalToWhenPresent(record::getTitle)
            .set(content).equalToWhenPresent(record::getContent)
            .set(cover).equalToWhenPresent(record::getCover)
            .set(startTime).equalToWhenPresent(record::getStartTime)
            .set(endTime).equalToWhenPresent(record::getEndTime)
            .set(retainTime).equalToWhenPresent(record::getRetainTime)
            .set(isCurrent).equalToWhenPresent(record::getIsCurrent);
    }

    default int updateByPrimaryKey(BiLevel record) {
        return update(c ->
            c
            .set(title).equalTo(record::getTitle)
            .set(content).equalTo(record::getContent)
            .set(cover).equalTo(record::getCover)
            .set(startTime).equalTo(record::getStartTime)
            .set(endTime).equalTo(record::getEndTime)
            .set(retainTime).equalTo(record::getRetainTime)
            .set(isCurrent).equalTo(record::getIsCurrent)
            .where(id, isEqualTo(record::getId))
        );
    }

    default int updateByPrimaryKeySelective(BiLevel record) {
        return update(c ->
            c
            .set(title).equalToWhenPresent(record::getTitle)
            .set(content).equalToWhenPresent(record::getContent)
            .set(cover).equalToWhenPresent(record::getCover)
            .set(startTime).equalToWhenPresent(record::getStartTime)
            .set(endTime).equalToWhenPresent(record::getEndTime)
            .set(retainTime).equalToWhenPresent(record::getRetainTime)
            .set(isCurrent).equalToWhenPresent(record::getIsCurrent)
            .where(id, isEqualTo(record::getId))
        );
    }

    default SqlTable getDefinition() {
        return biLevel;
    }
}