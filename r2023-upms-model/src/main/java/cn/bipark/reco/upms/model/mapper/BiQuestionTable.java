package cn.bipark.reco.upms.model.mapper;

import static cn.bipark.reco.upms.model.mapper.BiQuestionColumn.*;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import cn.bipark.reco.core.model.mapper.GeneralMapper;
import cn.bipark.reco.upms.model.entity.BiQuestion;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

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

public interface BiQuestionTable extends GeneralMapper<BiQuestion> {
    
    BasicColumn[] selectList = BasicColumn.columnList(
		id,
		type,
		content,
		answer,
		options,
		score
        );

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    int insert(InsertStatementProvider<BiQuestion> insertStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insertMultiple")
    int insertMultiple(MultiRowInsertStatementProvider<BiQuestion> multipleInsertStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("BiQuestionResult")
    Optional<BiQuestion> selectOne(SelectStatementProvider selectStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="BiQuestionResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="type", property="type", jdbcType=JdbcType.INTEGER),
        @Result(column="content", property="content", jdbcType=JdbcType.LONGVARCHAR),
        @Result(column="answer", property="answer", jdbcType=JdbcType.VARCHAR),
        @Result(column="options", property="options", jdbcType=JdbcType.LONGVARCHAR),
        @Result(column="score", property="score", jdbcType=JdbcType.INTEGER)
    })
    List<BiQuestion> selectMany(SelectStatementProvider selectStatement);

    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    default long count(CountDSLCompleter completer) {
        return MyBatis3Utils.countFrom(this::count, biQuestion, completer);
    }

    default int delete(DeleteDSLCompleter completer) {
        return MyBatis3Utils.deleteFrom(this::delete, biQuestion, completer);
    }

    default int deleteByPrimaryKey(Long id_) {
        return delete(c -> 
            c.where(id, isEqualTo(id_))
        );
    }

    default int insert(BiQuestion record) {
        return MyBatis3Utils.insert(this::insert, record, biQuestion, c ->
            c
            .map(id).toProperty("id")
            .map(type).toProperty("type")
            .map(content).toProperty("content")
            .map(answer).toProperty("answer")
            .map(options).toProperty("options")
            .map(score).toProperty("score")
        );
    }

    default int insertMultiple(Collection<BiQuestion> records) {
        return MyBatis3Utils.insertMultiple(this::insertMultiple, records, biQuestion, c ->
            c
            .map(id).toProperty("id")
            .map(type).toProperty("type")
            .map(content).toProperty("content")
            .map(answer).toProperty("answer")
            .map(options).toProperty("options")
            .map(score).toProperty("score")
        );
    }

    default int insertSelective(BiQuestion record) {
        return MyBatis3Utils.insert(this::insert, record, biQuestion, c ->
            c
            .map(id).toPropertyWhenPresent("id", record::getId)
            .map(type).toPropertyWhenPresent("type", record::getType)
            .map(content).toPropertyWhenPresent("content", record::getContent)
            .map(answer).toPropertyWhenPresent("answer", record::getAnswer)
            .map(options).toPropertyWhenPresent("options", record::getOptions)
            .map(score).toPropertyWhenPresent("score", record::getScore)
        );
    }

    default Optional<BiQuestion> selectOne(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectOne(this::selectOne, selectList, biQuestion, completer);
    }

    default List<BiQuestion> select(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectList(this::selectMany, selectList, biQuestion, completer);
    }

    default List<BiQuestion> selectDistinct(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectDistinct(this::selectMany, selectList, biQuestion, completer);
    }

    default Optional<BiQuestion> selectByPrimaryKey(Long id_) {
        return selectOne(c ->
            c.where(id, isEqualTo(id_))
        );
    }

    default int update(UpdateDSLCompleter completer) {
        return MyBatis3Utils.update(this::update, biQuestion, completer);
    }

    default UpdateDSL<UpdateModel> updateAllColumns(BiQuestion record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalTo(record::getId)
            .set(type).equalTo(record::getType)
            .set(content).equalTo(record::getContent)
            .set(answer).equalTo(record::getAnswer)
            .set(options).equalTo(record::getOptions)
            .set(score).equalTo(record::getScore);
    }

    default UpdateDSL<UpdateModel> updateSelectiveColumns(BiQuestion record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalToWhenPresent(record::getId)
            .set(type).equalToWhenPresent(record::getType)
            .set(content).equalToWhenPresent(record::getContent)
            .set(answer).equalToWhenPresent(record::getAnswer)
            .set(options).equalToWhenPresent(record::getOptions)
            .set(score).equalToWhenPresent(record::getScore);
    }

    default int updateByPrimaryKey(BiQuestion record) {
        return update(c ->
            c
            .set(type).equalTo(record::getType)
            .set(content).equalTo(record::getContent)
            .set(answer).equalTo(record::getAnswer)
            .set(options).equalTo(record::getOptions)
            .set(score).equalTo(record::getScore)
            .where(id, isEqualTo(record::getId))
        );
    }

    default int updateByPrimaryKeySelective(BiQuestion record) {
        return update(c ->
            c
            .set(type).equalToWhenPresent(record::getType)
            .set(content).equalToWhenPresent(record::getContent)
            .set(answer).equalToWhenPresent(record::getAnswer)
            .set(options).equalToWhenPresent(record::getOptions)
            .set(score).equalToWhenPresent(record::getScore)
            .where(id, isEqualTo(record::getId))
        );
    }

    default SqlTable getDefinition() {
        return biQuestion;
    }
}