package com.study.mapper;

import com.study.pojo.Team;

import java.util.List;

public interface TeamMapper {
    List<Team> getTeamList();

    Team getTeam(String id);

    List<Team> getTeamPage(Integer page,Integer size);

    int addTeam(Team team);

    int delTeam(String id);

    int updateTeam(Team team);
}
