package com.tu.vrl.valimised.server.util;

import java.util.LinkedList;
import java.util.List;

import com.tu.vrl.valimised.Party;
import com.tu.vrl.valimised.Person;
import com.tu.vrl.valimised.Region;

public class PersonGeneratorUtil {
  private static final String[][] REGIONS = { { "HA", "Harju maakond" }, { "HI", "Hiiu maakond" }, { "IV", "Ida-Viru maakond" }, { "JÕ", "Jõgeva maakond" },
                                             { "JÄ", "Järva maakond" }, { "LÄ", "Lääne maakond" }, { "LV", "Lääne-Viru maakond" }, { "PÕ", "Põlva maakond" },
                                             { "PÄ", "Pärnu maakond" }, { "RA", "Rapla maakond" }, { "SA", "Saare maakond" }, { "TA", "Tartu maakond" },
                                             { "VA", "Valga maakond" }, { "VI", "Viljandi maakond" }, { "VÕ", "Võru maakond" } };
  private static final String[][] PARTYS = { { "a", "aa" }, { "b", "bb" }, { "c", "cc" } };
  private static final String CHARS = "zxcvbnmasdfghjklqwertyuiopZXCVBNMASDFGHJKLQWERTYUIOP";
  private static final int MIN_PERSONS = 3;
  private static final int MAX_PERSONS = 10;
  private static final int NAME_LEGTH = 5;

  public static List<Person> getPersons() {
    List<Person> persons = new LinkedList<>();
    int personCount = MIN_PERSONS + (int) (Math.random() * ((MAX_PERSONS - MIN_PERSONS) + 1));
    String firstName = "";
    String lastName = "";
    for (int i = 0; i < personCount; i++) {
      firstName = "";
      lastName = "";
      for (int k = 0; k < NAME_LEGTH; k++) {
        firstName += CHARS.charAt(((int) (CHARS.length() * Math.random())));
        lastName += CHARS.charAt(((int) (CHARS.length() * Math.random())));
      }

      Region region = new Region();
      int randomRegion = (int) (REGIONS.length * Math.random());
      region.setId(REGIONS[randomRegion][0]);
      region.setName(REGIONS[randomRegion][1]);

      Party party = new Party();
      int randomParty = (int) (PARTYS.length * Math.random());
      party.setId(PARTYS[randomParty][0]);
      party.setName(PARTYS[randomParty][1]);

      int randomAge = (int) (100 * Math.random());

      Person person = new Person();
      person.setFirstName(firstName);
      person.setLastName(lastName);
      person.setAge(randomAge);
      person.setRegion(region);
      person.setParty(party);

      persons.add(person);

    }
    return persons;
  }
}
