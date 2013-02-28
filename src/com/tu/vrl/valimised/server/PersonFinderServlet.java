package com.tu.vrl.valimised.server;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.tu.vrl.valimised.Person;
import com.tu.vrl.valimised.server.util.PersonGeneratorUtil;

public class PersonFinderServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
    Gson gson = new Gson();
    Kandidaadid kandidaadid = new Kandidaadid();
    kandidaadid.setPersons(PersonGeneratorUtil.getPersons());
    String json = gson.toJson(kandidaadid);
    PrintWriter out = resp.getWriter();
    System.out.println(json);
    out.print(json);
  }

  public static class Kandidaadid {
    private List<Person> persons;

    public List<Person> getPersons() {
      return persons;
    }

    public void setPersons(List<Person> persons) {
      this.persons = persons;
    }

  }
}