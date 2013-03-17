package com.tu.vrl.valimised.constants;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

public class Constants {
  // private static final String[] TEAMS = { "CoffeeBreak", "Lonely Wolf", "TahanE-valida", "IT erakond", "AAA", "Veerand" };
  private static final String[] TEAMS = { "1", "2", "3", "4", "5", "6", "7", "8" };
  private static final String[] PASSWORDS = { "qwe2", "qwe3", "qwe5", "qwe8", "qwe13", "qwe21", "qwe34", "qwe55" };

  private static List<String> teams;
  private static List<String> passwords;

  public static List<String> getTeams() {
    if (teams == null) {
      teams = new LinkedList<>();
      teams.addAll(Arrays.asList(TEAMS));
    }
    return teams;
  }

  public static List<String> getTeamPasswords() {
    if (passwords == null) {
      passwords = new LinkedList<>();
      passwords.addAll(Arrays.asList(PASSWORDS));
    }
    return passwords;
  }
}
