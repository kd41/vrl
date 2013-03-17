package com.tu.vrl.valimised.statistic;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tu.vrl.valimised.constants.ChooseStatistic;
import com.tu.vrl.valimised.constants.Constants;

public class StatisticServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  private static final String DESTINATION = "/statistic.jsp";

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    System.out.println("get statistic");

    request.setAttribute("teamNames", Constants.getTeams());
    request.setAttribute("teamPasswords", Constants.getTeamPasswords());

    request.setAttribute("statistics", ChooseStatistic.getStatistics());

    forvard(request, response);
  }

  @Override
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
    System.out.println("post statistic");

    int current = Integer.parseInt(request.getParameter("current"));
    int choose = Integer.parseInt(request.getParameter("choose"));
    String password = request.getParameter("password");

    boolean hasError = false;
    if (current == choose) {
      System.out.println("Can't cheese yourself!");
      hasError = true;
    }

    String currentName = Constants.getTeams().get(current);
    System.out.println("CurrentName: " + currentName);
    String choosedName = Constants.getTeams().get(choose);
    System.out.println("ChoosedName: " + choosedName);

    for (ChooseStatistic.Team team : ChooseStatistic.getStatistics()) {
      if (currentName.equals(team.getName()) && team.isChoosed()) {
        System.out.println("Team '" + currentName + "' cant't make second choose");
        hasError = true;
        break;
      }
    }

    if (!Constants.getTeamPasswords().get(current).equals(password)) {
      System.out.println("Team " + currentName + " used wrond password: " + password);
      hasError = true;
    }

    System.out.println("current: " + current + " choose: " + choose + " password: " + password + " hasError:" + hasError);

    if (hasError) {
      response.sendRedirect(DESTINATION);
    } else {
      System.out.println("Team " + currentName + " choosed " + choosedName);
      ChooseStatistic.choose(currentName, choosedName);
      for (ChooseStatistic.Team team : ChooseStatistic.getStatistics()) {
        // System.out.println("team:" + team);
      }
      forvard(request, response);
    }
  }

  private void forvard(HttpServletRequest request, HttpServletResponse response) {
    RequestDispatcher rd = getServletContext().getRequestDispatcher(DESTINATION);
    try {
      rd.forward(request, response);
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
