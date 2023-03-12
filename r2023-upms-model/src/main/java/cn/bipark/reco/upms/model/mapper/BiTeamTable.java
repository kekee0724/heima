package cn.bipark.reco.upms.model.mapper;

import static cn.bipark.reco.upms.model.mapper.BiTeamColumn.*;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import cn.bipark.reco.core.model.mapper.GeneralMapper;
import cn.bipark.reco.upms.model.entity.BiTeam;
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

public interface BiTeamTable extends GeneralMapper<BiTeam> {
    
    BasicColumn[] selectList = BasicColumn.columnList(
		id,
		teamName,
		teamOrg
        );

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    int insert(InsertStatementProvider<BiTeam> insertStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insertMultiple")
    int insertMultiple(MultiRowInsertStatementProvider<BiTeam> multipleInsertStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("BiTeamResult")
    Optional<BiTeam> selectOne(SelectStatementProvider selectStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="BiTeamResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="team_name", property="teamName", jdbcType=JdbcType.VARCHAR),
        @Result(column="team_org", property="teamOrg", jdbcType=JdbcType.VARCHAR)
    })
    List<BiTeam> selectMany(SelectStatementProvider selectStatement);

    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    default long count(CountDSLCompleter completer) {
        return MyBatis3Utils.countFrom(this::count, biTeam, completer);
    }

    default int delete(DeleteDSLCompleter completer) {
        return MyBatis3Utils.deleteFrom(this::delete, biTeam, completer);
    }

    default int deleteByPrimaryKey(Long id_) {
        return delete(c -> 
            c.where(id, isEqualTo(id_))
        );
    }

    default int insert(BiTeam record) {
        return MyBatis3Utils.insert(this::insert, record, biTeam, c ->
            c
            .map(id).toProperty("id")
            .map(teamName).toProperty("teamName")
            .map(teamOrg).toProperty("teamOrg")
        );
    }

    default int insertMultiple(Collection<BiTeam> records) {
        return MyBatis3Utils.insertMultiple(this::insertMultiple, records, biTeam, c ->
            c
            .map(id).toProperty("id")
            .map(teamName).toProperty("teamName")
            .map(teamOrg).toProperty("teamOrg")
        );
    }

    default int insertSelective(BiTeam record) {
        return MyBatis3Utils.insert(this::insert, record, biTeam, c ->
            c
            .map(id).toPropertyWhenPresent("id", record::getId)
            .map(teamName).toPropertyWhenPresent("teamName", record::getTeamName)
            .map(teamOrg).toPropertyWhenPresent("teamOrg", record::getTeamOrg)
        );
    }

    default Optional<BiTeam> selectOne(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectOne(this::selectOne, selectList, biTeam, completer);
    }

    default List<BiTeam> select(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectList(this::selectMany, selectList, biTeam, completer);
    }

    default List<BiTeam> selectDistinct(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectDistinct(this::selectMany, selectList, biTeam, completer);
    }

    default Optional<BiTeam> selectByPrimaryKey(Long id_) {
        return selectOne(c ->
            c.where(id, isEqualTo(id_))
        );
    }

    default int update(UpdateDSLCompleter completer) {
        return MyBatis3Utils.update(this::update, biTeam, completer);
    }

    default UpdateDSL<UpdateModel> updateAllColumns(BiTeam record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalTo(record::getId)
            .set(teamName).equalTo(record::getTeamName)
            .set(teamOrg).equalTo(record::getTeamOrg);
    }

    default UpdateDSL<UpdateModel> updateSelectiveColumns(BiTeam record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalToWhenPresent(record::getId)
            .set(teamName).equalToWhenPresent(record::getTeamName)
            .set(teamOrg).equalToWhenPresent(record::getTeamOrg);
    }

    default int updateByPrimaryKey(BiTeam record) {
        return update(c ->
            c
            .set(teamName).equalTo(record::getTeamName)
            .set(teamOrg).equalTo(record::getTeamOrg)
            .where(id, isEqualTo(record::getId))
        );
    }

    default int updateByPrimaryKeySelective(BiTeam record) {
        return update(c ->
            c
            .set(teamName).equalToWhenPresent(record::getTeamName)
            .set(teamOrg).equalToWhenPresent(record::getTeamOrg)
            .where(id, isEqualTo(record::getId))
        );
    }

    default SqlTable getDefinition() {
        return biTeam;
    }
}