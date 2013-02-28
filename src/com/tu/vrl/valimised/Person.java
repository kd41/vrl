package com.tu.vrl.valimised;

public class Person {
  private String firstName;
  private String lastName;
  private int age;
  private Region region;
  private Party party;

  public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public int getAge() {
    return age;
  }

  public void setAge(int age) {
    this.age = age;
  }

  public Region getRegion() {
    return region;
  }

  public void setRegion(Region region) {
    this.region = region;
  }

  public Party getParty() {
    return party;
  }

  public void setParty(Party party) {
    this.party = party;
  }

  @Override
  public String toString() {
    return "\nPerson [firstName=" + firstName + ", lastName=" + lastName + ", age=" + age + ", region=" + region + ", party=" + party + "]";
  }
}
