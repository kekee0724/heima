package com.study;

import com.study.config.MybatisConfig;
import com.study.mapper.TeamMapper;
import com.study.pojo.Team;
import org.apache.ibatis.session.SqlSession;
import org.junit.jupiter.api.Test;

import java.util.List;

public class TeamMapperTest {
    @Test
    public void getTeamList() {
        SqlSession session = MybatisConfig.getSqlSession();
        TeamMapper mapper = session.getMapper(TeamMapper.class);
        List<Team> teams = mapper.getTeamList();
        for (Team u : teams) {
            System.out.println(u);
        }
    }

    @Test
    public void getTeamPage() {
        SqlSession session = MybatisConfig.getSqlSession();
        TeamMapper mapper = session.getMapper(TeamMapper.class);
        List<Team> teams = mapper.getTeamPage(1, 10);
        for (Team u : teams) {
            System.out.println(u);
        }
    }

    @Test
    public void addTeam() {
        SqlSession session = MybatisConfig.getSqlSession();
        TeamMapper mapper = session.getMapper(TeamMapper.class);
        int flag = mapper.addTeam(new Team("3", "可可", "0724", null));
        System.out.println(flag);
        session.commit();
    }

    @Test
    public void getTeam() {
        SqlSession session = MybatisConfig.getSqlSession();
        TeamMapper mapper = session.getMapper(TeamMapper.class);
        Team team = mapper.getTeam("1");
        System.out.println(team);
    }

    @Test
    public void updateTeam() {
        SqlSession session = MybatisConfig.getSqlSession();
        TeamMapper mapper = session.getMapper(TeamMapper.class);
        int flag = mapper.updateTeam(new Team("3", "可可Levi", "0724", null));
        System.out.println(flag);
        session.commit();
    }

    @Test
    public void delTeam() {
        SqlSession session = MybatisConfig.getSqlSession();
        TeamMapper mapper = session.getMapper(TeamMapper.class);
        int flag = mapper.delTeam("3");
        System.out.println(flag);
        session.commit();
    }
}
