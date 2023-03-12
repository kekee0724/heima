package cn.bipark.reco.upms.model.mapper;

import static cn.bipark.reco.upms.model.mapper.BiUserPositionColumn.*;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import cn.bipark.reco.core.model.mapper.GeneralMapper;
import cn.bipark.reco.upms.model.entity.BiUserPosition;
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

public interface BiUserPositionTable extends GeneralMapper<BiUserPosition> {
    
    BasicColumn[] selectList = BasicColumn.columnList(
		id,
		username,
		lat,
		lng
        );

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    int insert(InsertStatementProvider<BiUserPosition> insertStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insertMultiple")
    int insertMultiple(MultiRowInsertStatementProvider<BiUserPosition> multipleInsertStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("BiUserPositionResult")
    Optional<BiUserPosition> selectOne(SelectStatementProvider selectStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="BiUserPositionResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="username", property="username", jdbcType=JdbcType.VARCHAR),
        @Result(column="lat", property="lat", jdbcType=JdbcType.VARCHAR),
        @Result(column="lng", property="lng", jdbcType=JdbcType.VARCHAR)
    })
    List<BiUserPosition> selectMany(SelectStatementProvider selectStatement);

    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    default long count(CountDSLCompleter completer) {
        return MyBatis3Utils.countFrom(this::count, biUserPosition, completer);
    }

    default int delete(DeleteDSLCompleter completer) {
        return MyBatis3Utils.deleteFrom(this::delete, biUserPosition, completer);
    }

    default int deleteByPrimaryKey(Long id_) {
        return delete(c -> 
            c.where(id, isEqualTo(id_))
        );
    }

    default int insert(BiUserPosition record) {
        return MyBatis3Utils.insert(this::insert, record, biUserPosition, c ->
            c
            .map(id).toProperty("id")
            .map(username).toProperty("username")
            .map(lat).toProperty("lat")
            .map(lng).toProperty("lng")
        );
    }

    default int insertMultiple(Collection<BiUserPosition> records) {
        return MyBatis3Utils.insertMultiple(this::insertMultiple, records, biUserPosition, c ->
            c
            .map(id).toProperty("id")
            .map(username).toProperty("username")
            .map(lat).toProperty("lat")
            .map(lng).toProperty("lng")
        );
    }

    default int insertSelective(BiUserPosition record) {
        return MyBatis3Utils.insert(this::insert, record, biUserPosition, c ->
            c
            .map(id).toPropertyWhenPresent("id", record::getId)
            .map(username).toPropertyWhenPresent("username", record::getUsername)
            .map(lat).toPropertyWhenPresent("lat", record::getLat)
            .map(lng).toPropertyWhenPresent("lng", record::getLng)
        );
    }

    default Optional<BiUserPosition> selectOne(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectOne(this::selectOne, selectList, biUserPosition, completer);
    }

    default List<BiUserPosition> select(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectList(this::selectMany, selectList, biUserPosition, completer);
    }

    default List<BiUserPosition> selectDistinct(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectDistinct(this::selectMany, selectList, biUserPosition, completer);
    }

    default Optional<BiUserPosition> selectByPrimaryKey(Long id_) {
        return selectOne(c ->
            c.where(id, isEqualTo(id_))
        );
    }

    default int update(UpdateDSLCompleter completer) {
        return MyBatis3Utils.update(this::update, biUserPosition, completer);
    }

    default UpdateDSL<UpdateModel> updateAllColumns(BiUserPosition record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalTo(record::getId)
            .set(username).equalTo(record::getUsername)
            .set(lat).equalTo(record::getLat)
            .set(lng).equalTo(record::getLng);
    }

    default UpdateDSL<UpdateModel> updateSelectiveColumns(BiUserPosition record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalToWhenPresent(record::getId)
            .set(username).equalToWhenPresent(record::getUsername)
            .set(lat).equalToWhenPresent(record::getLat)
            .set(lng).equalToWhenPresent(record::getLng);
    }

    default int updateByPrimaryKey(BiUserPosition record) {
        return update(c ->
            c
            .set(username).equalTo(record::getUsername)
            .set(lat).equalTo(record::getLat)
            .set(lng).equalTo(record::getLng)
            .where(id, isEqualTo(record::getId))
        );
    }

    default int updateByPrimaryKeySelective(BiUserPosition record) {
        return update(c ->
            c
            .set(username).equalToWhenPresent(record::getUsername)
            .set(lat).equalToWhenPresent(record::getLat)
            .set(lng).equalToWhenPresent(record::getLng)
            .where(id, isEqualTo(record::getId))
        );
    }

    default SqlTable getDefinition() {
        return biUserPosition;
    }
}