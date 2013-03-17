package com.tu.vrl.valimised.server;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tu.vrl.valimised.constants.Constants;

public class PresentationQueueServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  @Override
  public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
    List<String> teams = Constants.getTeams();

    Collections.shuffle(teams);

    PrintWriter out = resp.getWriter();
    out.print(teams);
  }
}
