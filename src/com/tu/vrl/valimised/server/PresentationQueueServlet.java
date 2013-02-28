package com.tu.vrl.valimised.server;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PresentationQueueServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  @Override
  public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
    List<String> teams = new LinkedList<>();
    teams.add("CoffeeBreak");
    teams.add("Lonely Wolf");
    teams.add("TahanE-valida");
    teams.add("IT erakond");
    teams.add("AAA");
    teams.add("Veerand");

    Collections.shuffle(teams);

    PrintWriter out = resp.getWriter();
    out.print(teams);
  }
}
