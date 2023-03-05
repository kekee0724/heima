package cn.bipark.reco.order.model.mapper;

import static cn.bipark.reco.order.model.mapper.BiOrderColumn.*;
import static org.mybatis.dynamic.sql.SqlBuilder.*;

import cn.bipark.reco.core.model.mapper.GeneralMapper;
import cn.bipark.reco.order.model.entity.BiOrder;
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

public interface BiOrderTable extends GeneralMapper<BiOrder> {
    
    BasicColumn[] selectList = BasicColumn.columnList(
		id,
		appName,
		appCode,
		moduleUrl,
		haveNav,
		navType,
		isBuiltIn,
		isVirtual,
		iconUrl,
		isValid,
		sequence,
		remarks,
		inputer,
		inputerId,
		inputTime,
		badgeUrl,
		badgeCode
        );

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    long count(SelectStatementProvider selectStatement);

    @DeleteProvider(type=SqlProviderAdapter.class, method="delete")
    int delete(DeleteStatementProvider deleteStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insert")
    int insert(InsertStatementProvider<BiOrder> insertStatement);

    @InsertProvider(type=SqlProviderAdapter.class, method="insertMultiple")
    int insertMultiple(MultiRowInsertStatementProvider<BiOrder> multipleInsertStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @ResultMap("BiOrderResult")
    Optional<BiOrder> selectOne(SelectStatementProvider selectStatement);

    @SelectProvider(type=SqlProviderAdapter.class, method="select")
    @Results(id="BiOrderResult", value = {
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="app_name", property="appName", jdbcType=JdbcType.VARCHAR),
        @Result(column="app_code", property="appCode", jdbcType=JdbcType.VARCHAR),
        @Result(column="module_url", property="moduleUrl", jdbcType=JdbcType.VARCHAR),
        @Result(column="have_nav", property="haveNav", jdbcType=JdbcType.BIT),
        @Result(column="nav_type", property="navType", jdbcType=JdbcType.INTEGER),
        @Result(column="is_built_in", property="isBuiltIn", jdbcType=JdbcType.BIT),
        @Result(column="is_virtual", property="isVirtual", jdbcType=JdbcType.BIT),
        @Result(column="icon_url", property="iconUrl", jdbcType=JdbcType.VARCHAR),
        @Result(column="is_valid", property="isValid", jdbcType=JdbcType.BIT),
        @Result(column="sequence", property="sequence", jdbcType=JdbcType.INTEGER),
        @Result(column="remarks", property="remarks", jdbcType=JdbcType.VARCHAR),
        @Result(column="inputer", property="inputer", jdbcType=JdbcType.VARCHAR),
        @Result(column="inputer_id", property="inputerId", jdbcType=JdbcType.BIGINT),
        @Result(column="input_time", property="inputTime", jdbcType=JdbcType.TIMESTAMP),
        @Result(column="badge_url", property="badgeUrl", jdbcType=JdbcType.VARCHAR),
        @Result(column="badge_code", property="badgeCode", jdbcType=JdbcType.VARCHAR)
    })
    List<BiOrder> selectMany(SelectStatementProvider selectStatement);

    @UpdateProvider(type=SqlProviderAdapter.class, method="update")
    int update(UpdateStatementProvider updateStatement);

    default long count(CountDSLCompleter completer) {
        return MyBatis3Utils.countFrom(this::count, biOrder, completer);
    }

    default int delete(DeleteDSLCompleter completer) {
        return MyBatis3Utils.deleteFrom(this::delete, biOrder, completer);
    }

    default int deleteByPrimaryKey(Long id_) {
        return delete(c -> 
            c.where(id, isEqualTo(id_))
        );
    }

    default int insert(BiOrder record) {
        return MyBatis3Utils.insert(this::insert, record, biOrder, c ->
            c
            .map(id).toProperty("id")
            .map(appName).toProperty("appName")
            .map(appCode).toProperty("appCode")
            .map(moduleUrl).toProperty("moduleUrl")
            .map(haveNav).toProperty("haveNav")
            .map(navType).toProperty("navType")
            .map(isBuiltIn).toProperty("isBuiltIn")
            .map(isVirtual).toProperty("isVirtual")
            .map(iconUrl).toProperty("iconUrl")
            .map(isValid).toProperty("isValid")
            .map(sequence).toProperty("sequence")
            .map(remarks).toProperty("remarks")
            .map(inputer).toProperty("inputer")
            .map(inputerId).toProperty("inputerId")
            .map(inputTime).toProperty("inputTime")
            .map(badgeUrl).toProperty("badgeUrl")
            .map(badgeCode).toProperty("badgeCode")
        );
    }

    default int insertMultiple(Collection<BiOrder> records) {
        return MyBatis3Utils.insertMultiple(this::insertMultiple, records, biOrder, c ->
            c
            .map(id).toProperty("id")
            .map(appName).toProperty("appName")
            .map(appCode).toProperty("appCode")
            .map(moduleUrl).toProperty("moduleUrl")
            .map(haveNav).toProperty("haveNav")
            .map(navType).toProperty("navType")
            .map(isBuiltIn).toProperty("isBuiltIn")
            .map(isVirtual).toProperty("isVirtual")
            .map(iconUrl).toProperty("iconUrl")
            .map(isValid).toProperty("isValid")
            .map(sequence).toProperty("sequence")
            .map(remarks).toProperty("remarks")
            .map(inputer).toProperty("inputer")
            .map(inputerId).toProperty("inputerId")
            .map(inputTime).toProperty("inputTime")
            .map(badgeUrl).toProperty("badgeUrl")
            .map(badgeCode).toProperty("badgeCode")
        );
    }

    default int insertSelective(BiOrder record) {
        return MyBatis3Utils.insert(this::insert, record, biOrder, c ->
            c
            .map(id).toPropertyWhenPresent("id", record::getId)
            .map(appName).toPropertyWhenPresent("appName", record::getAppName)
            .map(appCode).toPropertyWhenPresent("appCode", record::getAppCode)
            .map(moduleUrl).toPropertyWhenPresent("moduleUrl", record::getModuleUrl)
            .map(haveNav).toPropertyWhenPresent("haveNav", record::getHaveNav)
            .map(navType).toPropertyWhenPresent("navType", record::getNavType)
            .map(isBuiltIn).toPropertyWhenPresent("isBuiltIn", record::getIsBuiltIn)
            .map(isVirtual).toPropertyWhenPresent("isVirtual", record::getIsVirtual)
            .map(iconUrl).toPropertyWhenPresent("iconUrl", record::getIconUrl)
            .map(isValid).toPropertyWhenPresent("isValid", record::getIsValid)
            .map(sequence).toPropertyWhenPresent("sequence", record::getSequence)
            .map(remarks).toPropertyWhenPresent("remarks", record::getRemarks)
            .map(inputer).toPropertyWhenPresent("inputer", record::getInputer)
            .map(inputerId).toPropertyWhenPresent("inputerId", record::getInputerId)
            .map(inputTime).toPropertyWhenPresent("inputTime", record::getInputTime)
            .map(badgeUrl).toPropertyWhenPresent("badgeUrl", record::getBadgeUrl)
            .map(badgeCode).toPropertyWhenPresent("badgeCode", record::getBadgeCode)
        );
    }

    default Optional<BiOrder> selectOne(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectOne(this::selectOne, selectList, biOrder, completer);
    }

    default List<BiOrder> select(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectList(this::selectMany, selectList, biOrder, completer);
    }

    default List<BiOrder> selectDistinct(SelectDSLCompleter completer) {
        return MyBatis3Utils.selectDistinct(this::selectMany, selectList, biOrder, completer);
    }

    default Optional<BiOrder> selectByPrimaryKey(Long id_) {
        return selectOne(c ->
            c.where(id, isEqualTo(id_))
        );
    }

    default int update(UpdateDSLCompleter completer) {
        return MyBatis3Utils.update(this::update, biOrder, completer);
    }

    default UpdateDSL<UpdateModel> updateAllColumns(BiOrder record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalTo(record::getId)
            .set(appName).equalTo(record::getAppName)
            .set(appCode).equalTo(record::getAppCode)
            .set(moduleUrl).equalTo(record::getModuleUrl)
            .set(haveNav).equalTo(record::getHaveNav)
            .set(navType).equalTo(record::getNavType)
            .set(isBuiltIn).equalTo(record::getIsBuiltIn)
            .set(isVirtual).equalTo(record::getIsVirtual)
            .set(iconUrl).equalTo(record::getIconUrl)
            .set(isValid).equalTo(record::getIsValid)
            .set(sequence).equalTo(record::getSequence)
            .set(remarks).equalTo(record::getRemarks)
            .set(inputer).equalTo(record::getInputer)
            .set(inputerId).equalTo(record::getInputerId)
            .set(inputTime).equalTo(record::getInputTime)
            .set(badgeUrl).equalTo(record::getBadgeUrl)
            .set(badgeCode).equalTo(record::getBadgeCode);
    }

    default UpdateDSL<UpdateModel> updateSelectiveColumns(BiOrder record, UpdateDSL<UpdateModel> dsl) {
        return dsl
            .set(id).equalToWhenPresent(record::getId)
            .set(appName).equalToWhenPresent(record::getAppName)
            .set(appCode).equalToWhenPresent(record::getAppCode)
            .set(moduleUrl).equalToWhenPresent(record::getModuleUrl)
            .set(haveNav).equalToWhenPresent(record::getHaveNav)
            .set(navType).equalToWhenPresent(record::getNavType)
            .set(isBuiltIn).equalToWhenPresent(record::getIsBuiltIn)
            .set(isVirtual).equalToWhenPresent(record::getIsVirtual)
            .set(iconUrl).equalToWhenPresent(record::getIconUrl)
            .set(isValid).equalToWhenPresent(record::getIsValid)
            .set(sequence).equalToWhenPresent(record::getSequence)
            .set(remarks).equalToWhenPresent(record::getRemarks)
            .set(inputer).equalToWhenPresent(record::getInputer)
            .set(inputerId).equalToWhenPresent(record::getInputerId)
            .set(inputTime).equalToWhenPresent(record::getInputTime)
            .set(badgeUrl).equalToWhenPresent(record::getBadgeUrl)
            .set(badgeCode).equalToWhenPresent(record::getBadgeCode);
    }

    default int updateByPrimaryKey(BiOrder record) {
        return update(c ->
            c
            .set(appName).equalTo(record::getAppName)
            .set(appCode).equalTo(record::getAppCode)
            .set(moduleUrl).equalTo(record::getModuleUrl)
            .set(haveNav).equalTo(record::getHaveNav)
            .set(navType).equalTo(record::getNavType)
            .set(isBuiltIn).equalTo(record::getIsBuiltIn)
            .set(isVirtual).equalTo(record::getIsVirtual)
            .set(iconUrl).equalTo(record::getIconUrl)
            .set(isValid).equalTo(record::getIsValid)
            .set(sequence).equalTo(record::getSequence)
            .set(remarks).equalTo(record::getRemarks)
            .set(inputer).equalTo(record::getInputer)
            .set(inputerId).equalTo(record::getInputerId)
            .set(inputTime).equalTo(record::getInputTime)
            .set(badgeUrl).equalTo(record::getBadgeUrl)
            .set(badgeCode).equalTo(record::getBadgeCode)
            .where(id, isEqualTo(record::getId))
        );
    }

    default int updateByPrimaryKeySelective(BiOrder record) {
        return update(c ->
            c
            .set(appName).equalToWhenPresent(record::getAppName)
            .set(appCode).equalToWhenPresent(record::getAppCode)
            .set(moduleUrl).equalToWhenPresent(record::getModuleUrl)
            .set(haveNav).equalToWhenPresent(record::getHaveNav)
            .set(navType).equalToWhenPresent(record::getNavType)
            .set(isBuiltIn).equalToWhenPresent(record::getIsBuiltIn)
            .set(isVirtual).equalToWhenPresent(record::getIsVirtual)
            .set(iconUrl).equalToWhenPresent(record::getIconUrl)
            .set(isValid).equalToWhenPresent(record::getIsValid)
            .set(sequence).equalToWhenPresent(record::getSequence)
            .set(remarks).equalToWhenPresent(record::getRemarks)
            .set(inputer).equalToWhenPresent(record::getInputer)
            .set(inputerId).equalToWhenPresent(record::getInputerId)
            .set(inputTime).equalToWhenPresent(record::getInputTime)
            .set(badgeUrl).equalToWhenPresent(record::getBadgeUrl)
            .set(badgeCode).equalToWhenPresent(record::getBadgeCode)
            .where(id, isEqualTo(record::getId))
        );
    }

    default SqlTable getDefinition() {
        return biOrder;
    }
}