package cn.bipark.reco.upms.model.mapper;

import static cn.bipark.reco.upms.model.mapper.BiUserRankColumn.*;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import cn.bipark.reco.core.model.mapper.GeneralMapper;
import cn.bipark.reco.upms.model.entity.BiUserRank;
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

public interface BiUserRankTable extends GeneralMapper<BiUserRank> {
    
    BasicColumn[] selectList = BasicColumn.columnList(
		id,
		levelId,
		userId,
		score,
		usedTime,
		teamId,
		rankNum
        );

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    int insert(InsertStatementProvider<BiUserRank> insertStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insertMultiple")
    int insertMultiple(MultiRowInsertStatementProvider<BiUserRank> multipleInsertStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("BiUserRankResult")
    Optional<BiUserRank> selectOne(SelectStatementProvider selectStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="BiUserRankResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="level_id", property="levelId", jdbcType=JdbcType.BIGINT),
        @Result(column="user_id", property="userId", jdbcType=JdbcType.BIGINT),
        @Result(column="score", property="score", jdbcType=JdbcType.INTEGER),
        @Result(column="used_time", property="usedTime", jdbcType=JdbcType.BIGINT),
        @Result(column="team_id", property="teamId", jdbcType=JdbcType.BIGINT),
        @Result(column="rank_num", property="rankNum", jdbcType=JdbcType.INTEGER)
    })
    List<BiUserRank> selectMany(SelectStatementProvider selectStatement);

    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    default long count(CountDSLCompleter completer) {
        return MyBatis3Utils.countFrom(this::count, biUserRank, completer);
    }

    default int delete(DeleteDSLCompleter completer) {
        return MyBatis3Utils.deleteFrom(this::delete, biUserRank, completer);
    }

    default int deleteByPrimaryKey(Long id_) {
        return delete(c -> 
            c.where(id, isEqualTo(id_))
        );
    }

    default int insert(BiUserRank record) {
        return MyBatis3Utils.insert(this::insert, record, biUserRank, c ->
            c
            .map(id).toProperty("id")
            .map(levelId).toProperty("levelId")
            .map(userId).toProperty("userId")
            .map(score).toProperty("score")
            .map(usedTime).toProperty("usedTime")
            .map(teamId).toProperty("teamId")
            .map(rankNum).toProperty("rankNum")
        );
    }

    default int insertMultiple(Collection<BiUserRank> records) {
        return MyBatis3Utils.insertMultiple(this::insertMultiple, records, biUserRank, c ->
            c
            .map(id).toProperty("id")
            .map(levelId).toProperty("levelId")
            .map(userId).toProperty("userId")
            .map(score).toProperty("score")
            .map(usedTime).toProperty("usedTime")
            .map(teamId).toProperty("teamId")
            .map(rankNum).toProperty("rankNum")
        );
    }

    default int insertSelective(BiUserRank record) {
        return MyBatis3Utils.insert(this::insert, record, biUserRank, c ->
            c
            .map(id).toPropertyWhenPresent("id", record::getId)
            .map(levelId).toPropertyWhenPresent("levelId", record::getLevelId)
            .map(userId).toPropertyWhenPresent("userId", record::getUserId)
            .map(score).toPropertyWhenPresent("score", record::getScore)
            .map(usedTime).toPropertyWhenPresent("usedTime", record::getUsedTime)
            .map(teamId).toPropertyWhenPresent("teamId", record::getTeamId)
            .map(rankNum).toPropertyWhenPresent("rankNum", record::getRankNum)
        );
    }

    default Optional<BiUserRank> selectOne(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectOne(this::selectOne, selectList, biUserRank, completer);
    }

    default List<BiUserRank> select(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectList(this::selectMany, selectList, biUserRank, completer);
    }

    default List<BiUserRank> selectDistinct(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectDistinct(this::selectMany, selectList, biUserRank, completer);
    }

    default Optional<BiUserRank> selectByPrimaryKey(Long id_) {
        return selectOne(c ->
            c.where(id, isEqualTo(id_))
        );
    }

    default int update(UpdateDSLCompleter completer) {
        return MyBatis3Utils.update(this::update, biUserRank, completer);
    }

    default UpdateDSL<UpdateModel> updateAllColumns(BiUserRank record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalTo(record::getId)
            .set(levelId).equalTo(record::getLevelId)
            .set(userId).equalTo(record::getUserId)
            .set(score).equalTo(record::getScore)
            .set(usedTime).equalTo(record::getUsedTime)
            .set(teamId).equalTo(record::getTeamId)
            .set(rankNum).equalTo(record::getRankNum);
    }

    default UpdateDSL<UpdateModel> updateSelectiveColumns(BiUserRank record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalToWhenPresent(record::getId)
            .set(levelId).equalToWhenPresent(record::getLevelId)
            .set(userId).equalToWhenPresent(record::getUserId)
            .set(score).equalToWhenPresent(record::getScore)
            .set(usedTime).equalToWhenPresent(record::getUsedTime)
            .set(teamId).equalToWhenPresent(record::getTeamId)
            .set(rankNum).equalToWhenPresent(record::getRankNum);
    }

    default int updateByPrimaryKey(BiUserRank record) {
        return update(c ->
            c
            .set(levelId).equalTo(record::getLevelId)
            .set(userId).equalTo(record::getUserId)
            .set(score).equalTo(record::getScore)
            .set(usedTime).equalTo(record::getUsedTime)
            .set(teamId).equalTo(record::getTeamId)
            .set(rankNum).equalTo(record::getRankNum)
            .where(id, isEqualTo(record::getId))
        );
    }

    default int updateByPrimaryKeySelective(BiUserRank record) {
        return update(c ->
            c
            .set(levelId).equalToWhenPresent(record::getLevelId)
            .set(userId).equalToWhenPresent(record::getUserId)
            .set(score).equalToWhenPresent(record::getScore)
            .set(usedTime).equalToWhenPresent(record::getUsedTime)
            .set(teamId).equalToWhenPresent(record::getTeamId)
            .set(rankNum).equalToWhenPresent(record::getRankNum)
            .where(id, isEqualTo(record::getId))
        );
    }

    default SqlTable getDefinition() {
        return biUserRank;
    }
}