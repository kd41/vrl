package com.tu.vrl.valimised.statistic;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tu.vrl.valimised.constants.ChooseStatistic;

public class ClearStatisticServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  private static final String PASSWORD = "1qa2ws3ed";

  @Override
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
    System.out.println("post clear statistic");
    System.out.println("request.getParameter(password):" + request.getParameter("password"));

    String password = request.getParameter("password");
    if (PASSWORD.equals(password)) {
      ChooseStatistic.clear();
    }

    RequestDispatcher rd = getServletContext().getRequestDispatcher("/statistic.jsp");
    try {
      rd.forward(request, response);
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
