package com.tu.vrl.valimised.constants;

import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class ChooseStatistic {
  private static List<Team> statistics;

  public static synchronized List<Team> getStatistics() {
    if (statistics == null) {
      statistics = new LinkedList<>();
      int count = 1;
      for (String teamName : Constants.getTeams()) {
        Team team = new Team();
        team.setId(count++);
        team.setName(teamName);
        team.setChoosed(false);
        team.setScore(new AtomicInteger(0));
        statistics.add(team);
      }
    }
    return statistics;
  }

  public static void choose(String currentName, String choosedName) {
    for (Team team : statistics) {
      if (currentName.equals(team.getName())) {
        team.setChoosed(true);
      }
      if (choosedName.equals(team.getName())) {
        team.getScore().incrementAndGet();
      }
    }
  }

  public static void clear() {
    statistics.clear();
    statistics = null;
  }

  public static class Team {
    private int id;
    private String name;
    private boolean choosed;
    private AtomicInteger score;

    public int getId() {
      return id;
    }

    public void setId(int id) {
      this.id = id;
    }

    public String getName() {
      return name;
    }

    public void setName(String name) {
      this.name = name;
    }

    public boolean isChoosed() {
      return choosed;
    }

    public void setChoosed(boolean choosed) {
      this.choosed = choosed;
    }

    public AtomicInteger getScore() {
      return score;
    }

    public void setScore(AtomicInteger score) {
      this.score = score;
    }

    @Override
    public String toString() {
      return "Team [id=" + id + ", name=" + name + ", choosed=" + choosed + ", score=" + score + "]";
    }

  }
}
