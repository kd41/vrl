package com.tu.vrl.valimised.server;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class KandidaadidServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  private static final Gson gson = new GsonBuilder().create();

  @Override
  public void doGet(HttpServletRequest requset, HttpServletResponse response) {
    String partyName = requset.getParameter("party");// ref

    // TODO: get data from database

    List<Candidate> candidatess = new ArrayList<>();
    Candidate c1 = new Candidate();
    c1.setId("1234567890");
    c1.setParty(new Party("REF", "Eesti Reformierakond"));
    c1.setPerson(new Person("37907034620", "Eduard Ekskavaator"));
    Candidate c2 = new Candidate();
    c2.setId("1234567891");
    c2.setParty(new Party("KESK", "Eesti Keskerakond"));
    c2.setPerson(new Person("37907034621", "Ferdinand Fuksia"));

    candidatess.add(c1);
    candidatess.add(c2);

    Candidates candidates = new Candidates();
    candidates.setCandidates(candidatess);

    String tagasi = gson.toJson(candidates);

    try {
      response.getWriter().write(tagasi);
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  public static class Candidates implements Serializable {
    private static final long serialVersionUID = 1L;
    private List<Candidate> candidates;

    public List<Candidate> getCandidates() {
      return candidates;
    }

    public void setCandidates(List<Candidate> candidates) {
      this.candidates = candidates;
    }

  }

  public static class Candidate implements Serializable {
    private static final long serialVersionUID = 1L;
    private String id;
    private Party party;
    private Person person;

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

    public Person getPerson() {
      return person;
    }

    public void setPerson(Person person) {
      this.person = person;
    }
  }

  public static class Party implements Serializable {
    private static final long serialVersionUID = 1L;
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

  public static class Person implements Serializable {
    private static final long serialVersionUID = 1L;
    private String id;
    private String name;

    public Person(String id, String name) {
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
