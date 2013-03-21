package com.tu.vrl.valimised.server;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class TestServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  private static final Gson gson = new GsonBuilder().create();

  @Override
  public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
    List<Candidate> candidates = new LinkedList<>();
    Candidate candidate1 = new Candidate();
    candidate1.setId("1234");
    candidate1.setParty(new Party("p123", "name of party1"));

    Candidate candidate2 = new Candidate();
    candidate2.setId("5677");
    candidate2.setParty(new Party("P987", "name of party2"));

    candidates.add(candidate1);
    candidates.add(candidate2);

    String json = gson.toJson(candidates);

    PrintWriter out = resp.getWriter();
    out.print(json);
  }

  public static class Candidate {
    private String id;
    private Party party;

    public String getId() {
      return id;
    }

    public void setId(String id) {
      this.id = id;
    }

    public Party getParty() {
      return party;
    }

    public void setParty(Party party) {
      this.party = party;
    }

  }

  public static class Party {
    private String id;
    private String name;

    public Party(String id, String name) {
      this.id = id;
      this.name = name;
    }

    public String getId() {
      return id;
    }

    public void setId(String id) {
      this.id = id;
    }

    public String getName() {
      return name;
    }

    public void setName(String name) {
      this.name = name;
    }
  }

}
