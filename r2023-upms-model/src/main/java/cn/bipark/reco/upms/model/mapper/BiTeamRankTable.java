package cn.bipark.reco.upms.model.mapper;

import static cn.bipark.reco.upms.model.mapper.BiTeamRankColumn.*;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import cn.bipark.reco.core.model.mapper.GeneralMapper;
import cn.bipark.reco.upms.model.entity.BiTeamRank;
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

public interface BiTeamRankTable extends GeneralMapper<BiTeamRank> {
    
    BasicColumn[] selectList = BasicColumn.columnList(
		id,
		levelId,
		teamId,
		participants,
		totalUser,
		totalScore,
		totalTime,
		averageScore,
		partyRate,
		averageTime,
		rankNum,
		isOut
        );

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    int insert(InsertStatementProvider<BiTeamRank> insertStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insertMultiple")
    int insertMultiple(MultiRowInsertStatementProvider<BiTeamRank> multipleInsertStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("BiTeamRankResult")
    Optional<BiTeamRank> selectOne(SelectStatementProvider selectStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="BiTeamRankResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="level_id", property="levelId", jdbcType=JdbcType.BIGINT),
        @Result(column="team_id", property="teamId", jdbcType=JdbcType.BIGINT),
        @Result(column="participants", property="participants", jdbcType=JdbcType.INTEGER, id=true),
        @Result(column="total_user", property="totalUser", jdbcType=JdbcType.INTEGER),
        @Result(column="total_score", property="totalScore", jdbcType=JdbcType.BIGINT),
        @Result(column="total_time", property="totalTime", jdbcType=JdbcType.BIGINT),
        @Result(column="average_score", property="averageScore", jdbcType=JdbcType.REAL),
        @Result(column="party_rate", property="partyRate", jdbcType=JdbcType.REAL),
        @Result(column="average_time", property="averageTime", jdbcType=JdbcType.REAL),
        @Result(column="rank_num", property="rankNum", jdbcType=JdbcType.INTEGER),
        @Result(column="is_out", property="isOut", jdbcType=JdbcType.INTEGER)
    })
    List<BiTeamRank> selectMany(SelectStatementProvider selectStatement);

    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    default long count(CountDSLCompleter completer) {
        return MyBatis3Utils.countFrom(this::count, biTeamRank, completer);
    }

    default int delete(DeleteDSLCompleter completer) {
        return MyBatis3Utils.deleteFrom(this::delete, biTeamRank, completer);
    }

    default int deleteByPrimaryKey(Long id_) {
        return delete(c -> 
            c.where(id, isEqualTo(id_))
        );
    }

    default int insert(BiTeamRank record) {
        return MyBatis3Utils.insert(this::insert, record, biTeamRank, c ->
            c
            .map(id).toProperty("id")
            .map(levelId).toProperty("levelId")
            .map(teamId).toProperty("teamId")
            .map(participants).toProperty("participants")
            .map(totalUser).toProperty("totalUser")
            .map(totalScore).toProperty("totalScore")
            .map(totalTime).toProperty("totalTime")
            .map(averageScore).toProperty("averageScore")
            .map(partyRate).toProperty("partyRate")
            .map(averageTime).toProperty("averageTime")
            .map(rankNum).toProperty("rankNum")
            .map(isOut).toProperty("isOut")
        );
    }

    default int insertMultiple(Collection<BiTeamRank> records) {
        return MyBatis3Utils.insertMultiple(this::insertMultiple, records, biTeamRank, c ->
            c
            .map(id).toProperty("id")
            .map(levelId).toProperty("levelId")
            .map(teamId).toProperty("teamId")
            .map(participants).toProperty("participants")
            .map(totalUser).toProperty("totalUser")
            .map(totalScore).toProperty("totalScore")
            .map(totalTime).toProperty("totalTime")
            .map(averageScore).toProperty("averageScore")
            .map(partyRate).toProperty("partyRate")
            .map(averageTime).toProperty("averageTime")
            .map(rankNum).toProperty("rankNum")
            .map(isOut).toProperty("isOut")
        );
    }

    default int insertSelective(BiTeamRank record) {
        return MyBatis3Utils.insert(this::insert, record, biTeamRank, c ->
            c
            .map(id).toPropertyWhenPresent("id", record::getId)
            .map(levelId).toPropertyWhenPresent("levelId", record::getLevelId)
            .map(teamId).toPropertyWhenPresent("teamId", record::getTeamId)
            .map(participants).toPropertyWhenPresent("participants", record::getParticipants)
            .map(totalUser).toPropertyWhenPresent("totalUser", record::getTotalUser)
            .map(totalScore).toPropertyWhenPresent("totalScore", record::getTotalScore)
            .map(totalTime).toPropertyWhenPresent("totalTime", record::getTotalTime)
            .map(averageScore).toPropertyWhenPresent("averageScore", record::getAverageScore)
            .map(partyRate).toPropertyWhenPresent("partyRate", record::getPartyRate)
            .map(averageTime).toPropertyWhenPresent("averageTime", record::getAverageTime)
            .map(rankNum).toPropertyWhenPresent("rankNum", record::getRankNum)
            .map(isOut).toPropertyWhenPresent("isOut", record::getIsOut)
        );
    }

    default Optional<BiTeamRank> selectOne(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectOne(this::selectOne, selectList, biTeamRank, completer);
    }

    default List<BiTeamRank> select(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectList(this::selectMany, selectList, biTeamRank, completer);
    }

    default List<BiTeamRank> selectDistinct(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectDistinct(this::selectMany, selectList, biTeamRank, completer);
    }

    default Optional<BiTeamRank> selectByPrimaryKey(Long id_) {
        return selectOne(c ->
            c.where(id, isEqualTo(id_))
        );
    }

    default int update(UpdateDSLCompleter completer) {
        return MyBatis3Utils.update(this::update, biTeamRank, completer);
    }

    default UpdateDSL<UpdateModel> updateAllColumns(BiTeamRank record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalTo(record::getId)
            .set(levelId).equalTo(record::getLevelId)
            .set(teamId).equalTo(record::getTeamId)
            .set(participants).equalTo(record::getParticipants)
            .set(totalUser).equalTo(record::getTotalUser)
            .set(totalScore).equalTo(record::getTotalScore)
            .set(totalTime).equalTo(record::getTotalTime)
            .set(averageScore).equalTo(record::getAverageScore)
            .set(partyRate).equalTo(record::getPartyRate)
            .set(averageTime).equalTo(record::getAverageTime)
            .set(rankNum).equalTo(record::getRankNum)
            .set(isOut).equalTo(record::getIsOut);
    }

    default UpdateDSL<UpdateModel> updateSelectiveColumns(BiTeamRank record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalToWhenPresent(record::getId)
            .set(levelId).equalToWhenPresent(record::getLevelId)
            .set(teamId).equalToWhenPresent(record::getTeamId)
            .set(participants).equalToWhenPresent(record::getParticipants)
            .set(totalUser).equalToWhenPresent(record::getTotalUser)
            .set(totalScore).equalToWhenPresent(record::getTotalScore)
            .set(totalTime).equalToWhenPresent(record::getTotalTime)
            .set(averageScore).equalToWhenPresent(record::getAverageScore)
            .set(partyRate).equalToWhenPresent(record::getPartyRate)
            .set(averageTime).equalToWhenPresent(record::getAverageTime)
            .set(rankNum).equalToWhenPresent(record::getRankNum)
            .set(isOut).equalToWhenPresent(record::getIsOut);
    }

    default int updateByPrimaryKey(BiTeamRank record) {
        return update(c ->
            c
            .set(levelId).equalTo(record::getLevelId)
            .set(teamId).equalTo(record::getTeamId)
            .set(totalUser).equalTo(record::getTotalUser)
            .set(totalScore).equalTo(record::getTotalScore)
            .set(totalTime).equalTo(record::getTotalTime)
            .set(averageScore).equalTo(record::getAverageScore)
            .set(partyRate).equalTo(record::getPartyRate)
            .set(averageTime).equalTo(record::getAverageTime)
            .set(rankNum).equalTo(record::getRankNum)
            .set(isOut).equalTo(record::getIsOut)
            .where(id, isEqualTo(record::getId))
        );
    }

    default int updateByPrimaryKeySelective(BiTeamRank record) {
        return update(c ->
            c
            .set(levelId).equalToWhenPresent(record::getLevelId)
            .set(teamId).equalToWhenPresent(record::getTeamId)
            .set(totalUser).equalToWhenPresent(record::getTotalUser)
            .set(totalScore).equalToWhenPresent(record::getTotalScore)
            .set(totalTime).equalToWhenPresent(record::getTotalTime)
            .set(averageScore).equalToWhenPresent(record::getAverageScore)
            .set(partyRate).equalToWhenPresent(record::getPartyRate)
            .set(averageTime).equalToWhenPresent(record::getAverageTime)
            .set(rankNum).equalToWhenPresent(record::getRankNum)
            .set(isOut).equalToWhenPresent(record::getIsOut)
            .where(id, isEqualTo(record::getId))
        );
    }

    default SqlTable getDefinition() {
        return biTeamRank;
    }
}