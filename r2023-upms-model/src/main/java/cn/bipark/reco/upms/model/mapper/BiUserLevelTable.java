package cn.bipark.reco.upms.model.mapper;

import static cn.bipark.reco.upms.model.mapper.BiUserLevelColumn.*;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import cn.bipark.reco.core.model.mapper.GeneralMapper;
import cn.bipark.reco.upms.model.entity.BiUserLevel;
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

public interface BiUserLevelTable extends GeneralMapper<BiUserLevel> {
    
    BasicColumn[] selectList = BasicColumn.columnList(
		id,
		userId,
		levelId,
		questions
        );

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    int insert(InsertStatementProvider<BiUserLevel> insertStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insertMultiple")
    int insertMultiple(MultiRowInsertStatementProvider<BiUserLevel> multipleInsertStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("BiUserLevelResult")
    Optional<BiUserLevel> selectOne(SelectStatementProvider selectStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="BiUserLevelResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="user_id", property="userId", jdbcType=JdbcType.BIGINT),
        @Result(column="level_id", property="levelId", jdbcType=JdbcType.BIGINT),
        @Result(column="questions", property="questions", jdbcType=JdbcType.LONGVARCHAR)
    })
    List<BiUserLevel> selectMany(SelectStatementProvider selectStatement);

    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    default long count(CountDSLCompleter completer) {
        return MyBatis3Utils.countFrom(this::count, biUserLevel, completer);
    }

    default int delete(DeleteDSLCompleter completer) {
        return MyBatis3Utils.deleteFrom(this::delete, biUserLevel, completer);
    }

    default int deleteByPrimaryKey(Long id_) {
        return delete(c -> 
            c.where(id, isEqualTo(id_))
        );
    }

    default int insert(BiUserLevel record) {
        return MyBatis3Utils.insert(this::insert, record, biUserLevel, c ->
            c
            .map(id).toProperty("id")
            .map(userId).toProperty("userId")
            .map(levelId).toProperty("levelId")
            .map(questions).toProperty("questions")
        );
    }

    default int insertMultiple(Collection<BiUserLevel> records) {
        return MyBatis3Utils.insertMultiple(this::insertMultiple, records, biUserLevel, c ->
            c
            .map(id).toProperty("id")
            .map(userId).toProperty("userId")
            .map(levelId).toProperty("levelId")
            .map(questions).toProperty("questions")
        );
    }

    default int insertSelective(BiUserLevel record) {
        return MyBatis3Utils.insert(this::insert, record, biUserLevel, c ->
            c
            .map(id).toPropertyWhenPresent("id", record::getId)
            .map(userId).toPropertyWhenPresent("userId", record::getUserId)
            .map(levelId).toPropertyWhenPresent("levelId", record::getLevelId)
            .map(questions).toPropertyWhenPresent("questions", record::getQuestions)
        );
    }

    default Optional<BiUserLevel> selectOne(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectOne(this::selectOne, selectList, biUserLevel, completer);
    }

    default List<BiUserLevel> select(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectList(this::selectMany, selectList, biUserLevel, completer);
    }

    default List<BiUserLevel> selectDistinct(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectDistinct(this::selectMany, selectList, biUserLevel, completer);
    }

    default Optional<BiUserLevel> selectByPrimaryKey(Long id_) {
        return selectOne(c ->
            c.where(id, isEqualTo(id_))
        );
    }

    default int update(UpdateDSLCompleter completer) {
        return MyBatis3Utils.update(this::update, biUserLevel, completer);
    }

    default UpdateDSL<UpdateModel> updateAllColumns(BiUserLevel record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalTo(record::getId)
            .set(userId).equalTo(record::getUserId)
            .set(levelId).equalTo(record::getLevelId)
            .set(questions).equalTo(record::getQuestions);
    }

    default UpdateDSL<UpdateModel> updateSelectiveColumns(BiUserLevel record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalToWhenPresent(record::getId)
            .set(userId).equalToWhenPresent(record::getUserId)
            .set(levelId).equalToWhenPresent(record::getLevelId)
            .set(questions).equalToWhenPresent(record::getQuestions);
    }

    default int updateByPrimaryKey(BiUserLevel record) {
        return update(c ->
            c
            .set(userId).equalTo(record::getUserId)
            .set(levelId).equalTo(record::getLevelId)
            .set(questions).equalTo(record::getQuestions)
            .where(id, isEqualTo(record::getId))
        );
    }

    default int updateByPrimaryKeySelective(BiUserLevel record) {
        return update(c ->
            c
            .set(userId).equalToWhenPresent(record::getUserId)
            .set(levelId).equalToWhenPresent(record::getLevelId)
            .set(questions).equalToWhenPresent(record::getQuestions)
            .where(id, isEqualTo(record::getId))
        );
    }

    default SqlTable getDefinition() {
        return biUserLevel;
    }
}