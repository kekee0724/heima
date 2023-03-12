package cn.bipark.reco.upms.model.mapper;

import static cn.bipark.reco.upms.model.mapper.BiUserColumn.*;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import cn.bipark.reco.core.model.mapper.GeneralMapper;
import cn.bipark.reco.upms.model.entity.BiUser;
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

public interface BiUserTable extends GeneralMapper<BiUser> {
    
    BasicColumn[] selectList = BasicColumn.columnList(
		id,
		username,
		password,
		nick,
		email,
		phone,
		team
        );

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    int insert(InsertStatementProvider<BiUser> insertStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insertMultiple")
    int insertMultiple(MultiRowInsertStatementProvider<BiUser> multipleInsertStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("BiUserResult")
    Optional<BiUser> selectOne(SelectStatementProvider selectStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="BiUserResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="username", property="username", jdbcType=JdbcType.VARCHAR),
        @Result(column="password", property="password", jdbcType=JdbcType.VARCHAR),
        @Result(column="nick", property="nick", jdbcType=JdbcType.VARCHAR),
        @Result(column="email", property="email", jdbcType=JdbcType.VARCHAR),
        @Result(column="phone", property="phone", jdbcType=JdbcType.VARCHAR),
        @Result(column="team", property="team", jdbcType=JdbcType.VARCHAR)
    })
    List<BiUser> selectMany(SelectStatementProvider selectStatement);

    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    default long count(CountDSLCompleter completer) {
        return MyBatis3Utils.countFrom(this::count, biUser, completer);
    }

    default int delete(DeleteDSLCompleter completer) {
        return MyBatis3Utils.deleteFrom(this::delete, biUser, completer);
    }

    default int deleteByPrimaryKey(Long id_) {
        return delete(c -> 
            c.where(id, isEqualTo(id_))
        );
    }

    default int insert(BiUser record) {
        return MyBatis3Utils.insert(this::insert, record, biUser, c ->
            c
            .map(id).toProperty("id")
            .map(username).toProperty("username")
            .map(password).toProperty("password")
            .map(nick).toProperty("nick")
            .map(email).toProperty("email")
            .map(phone).toProperty("phone")
            .map(team).toProperty("team")
        );
    }

    default int insertMultiple(Collection<BiUser> records) {
        return MyBatis3Utils.insertMultiple(this::insertMultiple, records, biUser, c ->
            c
            .map(id).toProperty("id")
            .map(username).toProperty("username")
            .map(password).toProperty("password")
            .map(nick).toProperty("nick")
            .map(email).toProperty("email")
            .map(phone).toProperty("phone")
            .map(team).toProperty("team")
        );
    }

    default int insertSelective(BiUser record) {
        return MyBatis3Utils.insert(this::insert, record, biUser, c ->
            c
            .map(id).toPropertyWhenPresent("id", record::getId)
            .map(username).toPropertyWhenPresent("username", record::getUsername)
            .map(password).toPropertyWhenPresent("password", record::getPassword)
            .map(nick).toPropertyWhenPresent("nick", record::getNick)
            .map(email).toPropertyWhenPresent("email", record::getEmail)
            .map(phone).toPropertyWhenPresent("phone", record::getPhone)
            .map(team).toPropertyWhenPresent("team", record::getTeam)
        );
    }

    default Optional<BiUser> selectOne(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectOne(this::selectOne, selectList, biUser, completer);
    }

    default List<BiUser> select(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectList(this::selectMany, selectList, biUser, completer);
    }

    default List<BiUser> selectDistinct(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectDistinct(this::selectMany, selectList, biUser, completer);
    }

    default Optional<BiUser> selectByPrimaryKey(Long id_) {
        return selectOne(c ->
            c.where(id, isEqualTo(id_))
        );
    }

    default int update(UpdateDSLCompleter completer) {
        return MyBatis3Utils.update(this::update, biUser, completer);
    }

    default UpdateDSL<UpdateModel> updateAllColumns(BiUser record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalTo(record::getId)
            .set(username).equalTo(record::getUsername)
            .set(password).equalTo(record::getPassword)
            .set(nick).equalTo(record::getNick)
            .set(email).equalTo(record::getEmail)
            .set(phone).equalTo(record::getPhone)
            .set(team).equalTo(record::getTeam);
    }

    default UpdateDSL<UpdateModel> updateSelectiveColumns(BiUser record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalToWhenPresent(record::getId)
            .set(username).equalToWhenPresent(record::getUsername)
            .set(password).equalToWhenPresent(record::getPassword)
            .set(nick).equalToWhenPresent(record::getNick)
            .set(email).equalToWhenPresent(record::getEmail)
            .set(phone).equalToWhenPresent(record::getPhone)
            .set(team).equalToWhenPresent(record::getTeam);
    }

    default int updateByPrimaryKey(BiUser record) {
        return update(c ->
            c
            .set(username).equalTo(record::getUsername)
            .set(password).equalTo(record::getPassword)
            .set(nick).equalTo(record::getNick)
            .set(email).equalTo(record::getEmail)
            .set(phone).equalTo(record::getPhone)
            .set(team).equalTo(record::getTeam)
            .where(id, isEqualTo(record::getId))
        );
    }

    default int updateByPrimaryKeySelective(BiUser record) {
        return update(c ->
            c
            .set(username).equalToWhenPresent(record::getUsername)
            .set(password).equalToWhenPresent(record::getPassword)
            .set(nick).equalToWhenPresent(record::getNick)
            .set(email).equalToWhenPresent(record::getEmail)
            .set(phone).equalToWhenPresent(record::getPhone)
            .set(team).equalToWhenPresent(record::getTeam)
            .where(id, isEqualTo(record::getId))
        );
    }

    default SqlTable getDefinition() {
        return biUser;
    }
}