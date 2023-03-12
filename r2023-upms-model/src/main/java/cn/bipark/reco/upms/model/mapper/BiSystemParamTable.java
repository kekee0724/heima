package cn.bipark.reco.upms.model.mapper;

import static cn.bipark.reco.upms.model.mapper.BiSystemParamColumn.*;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import cn.bipark.reco.core.model.mapper.GeneralMapper;
import cn.bipark.reco.upms.model.entity.BiSystemParam;
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

public interface BiSystemParamTable extends GeneralMapper<BiSystemParam> {
    
    BasicColumn[] selectList = BasicColumn.columnList(
		id,
		paramKey,
		paramValue,
		gmtCreate,
		gmtUpdateTime,
		gmtUpdate,
		gmtCreateTime
        );

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    int insert(InsertStatementProvider<BiSystemParam> insertStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insertMultiple")
    int insertMultiple(MultiRowInsertStatementProvider<BiSystemParam> multipleInsertStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("BiSystemParamResult")
    Optional<BiSystemParam> selectOne(SelectStatementProvider selectStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="BiSystemParamResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="param_key", property="paramKey", jdbcType=JdbcType.VARCHAR),
        @Result(column="param_value", property="paramValue", jdbcType=JdbcType.VARCHAR),
        @Result(column="gmt_create", property="gmtCreate", jdbcType=JdbcType.VARCHAR),
        @Result(column="gmt_update_time", property="gmtUpdateTime", jdbcType=JdbcType.TIMESTAMP),
        @Result(column="gmt_update", property="gmtUpdate", jdbcType=JdbcType.VARCHAR),
        @Result(column="gmt_create_time", property="gmtCreateTime", jdbcType=JdbcType.TIMESTAMP)
    })
    List<BiSystemParam> selectMany(SelectStatementProvider selectStatement);

    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    default long count(CountDSLCompleter completer) {
        return MyBatis3Utils.countFrom(this::count, biSystemParam, completer);
    }

    default int delete(DeleteDSLCompleter completer) {
        return MyBatis3Utils.deleteFrom(this::delete, biSystemParam, completer);
    }

    default int deleteByPrimaryKey(Long id_) {
        return delete(c -> 
            c.where(id, isEqualTo(id_))
        );
    }

    default int insert(BiSystemParam record) {
        return MyBatis3Utils.insert(this::insert, record, biSystemParam, c ->
            c
            .map(id).toProperty("id")
            .map(paramKey).toProperty("paramKey")
            .map(paramValue).toProperty("paramValue")
            .map(gmtCreate).toProperty("gmtCreate")
            .map(gmtUpdateTime).toProperty("gmtUpdateTime")
            .map(gmtUpdate).toProperty("gmtUpdate")
            .map(gmtCreateTime).toProperty("gmtCreateTime")
        );
    }

    default int insertMultiple(Collection<BiSystemParam> records) {
        return MyBatis3Utils.insertMultiple(this::insertMultiple, records, biSystemParam, c ->
            c
            .map(id).toProperty("id")
            .map(paramKey).toProperty("paramKey")
            .map(paramValue).toProperty("paramValue")
            .map(gmtCreate).toProperty("gmtCreate")
            .map(gmtUpdateTime).toProperty("gmtUpdateTime")
            .map(gmtUpdate).toProperty("gmtUpdate")
            .map(gmtCreateTime).toProperty("gmtCreateTime")
        );
    }

    default int insertSelective(BiSystemParam record) {
        return MyBatis3Utils.insert(this::insert, record, biSystemParam, c ->
            c
            .map(id).toPropertyWhenPresent("id", record::getId)
            .map(paramKey).toPropertyWhenPresent("paramKey", record::getParamKey)
            .map(paramValue).toPropertyWhenPresent("paramValue", record::getParamValue)
            .map(gmtCreate).toPropertyWhenPresent("gmtCreate", record::getGmtCreate)
            .map(gmtUpdateTime).toPropertyWhenPresent("gmtUpdateTime", record::getGmtUpdateTime)
            .map(gmtUpdate).toPropertyWhenPresent("gmtUpdate", record::getGmtUpdate)
            .map(gmtCreateTime).toPropertyWhenPresent("gmtCreateTime", record::getGmtCreateTime)
        );
    }

    default Optional<BiSystemParam> selectOne(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectOne(this::selectOne, selectList, biSystemParam, completer);
    }

    default List<BiSystemParam> select(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectList(this::selectMany, selectList, biSystemParam, completer);
    }

    default List<BiSystemParam> selectDistinct(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectDistinct(this::selectMany, selectList, biSystemParam, completer);
    }

    default Optional<BiSystemParam> selectByPrimaryKey(Long id_) {
        return selectOne(c ->
            c.where(id, isEqualTo(id_))
        );
    }

    default int update(UpdateDSLCompleter completer) {
        return MyBatis3Utils.update(this::update, biSystemParam, completer);
    }

    default UpdateDSL<UpdateModel> updateAllColumns(BiSystemParam record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalTo(record::getId)
            .set(paramKey).equalTo(record::getParamKey)
            .set(paramValue).equalTo(record::getParamValue)
            .set(gmtCreate).equalTo(record::getGmtCreate)
            .set(gmtUpdateTime).equalTo(record::getGmtUpdateTime)
            .set(gmtUpdate).equalTo(record::getGmtUpdate)
            .set(gmtCreateTime).equalTo(record::getGmtCreateTime);
    }

    default UpdateDSL<UpdateModel> updateSelectiveColumns(BiSystemParam record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalToWhenPresent(record::getId)
            .set(paramKey).equalToWhenPresent(record::getParamKey)
            .set(paramValue).equalToWhenPresent(record::getParamValue)
            .set(gmtCreate).equalToWhenPresent(record::getGmtCreate)
            .set(gmtUpdateTime).equalToWhenPresent(record::getGmtUpdateTime)
            .set(gmtUpdate).equalToWhenPresent(record::getGmtUpdate)
            .set(gmtCreateTime).equalToWhenPresent(record::getGmtCreateTime);
    }

    default int updateByPrimaryKey(BiSystemParam record) {
        return update(c ->
            c
            .set(paramKey).equalTo(record::getParamKey)
            .set(paramValue).equalTo(record::getParamValue)
            .set(gmtCreate).equalTo(record::getGmtCreate)
            .set(gmtUpdateTime).equalTo(record::getGmtUpdateTime)
            .set(gmtUpdate).equalTo(record::getGmtUpdate)
            .set(gmtCreateTime).equalTo(record::getGmtCreateTime)
            .where(id, isEqualTo(record::getId))
        );
    }

    default int updateByPrimaryKeySelective(BiSystemParam record) {
        return update(c ->
            c
            .set(paramKey).equalToWhenPresent(record::getParamKey)
            .set(paramValue).equalToWhenPresent(record::getParamValue)
            .set(gmtCreate).equalToWhenPresent(record::getGmtCreate)
            .set(gmtUpdateTime).equalToWhenPresent(record::getGmtUpdateTime)
            .set(gmtUpdate).equalToWhenPresent(record::getGmtUpdate)
            .set(gmtCreateTime).equalToWhenPresent(record::getGmtCreateTime)
            .where(id, isEqualTo(record::getId))
        );
    }

    default SqlTable getDefinition() {
        return biSystemParam;
    }
}