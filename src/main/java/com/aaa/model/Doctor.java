package com.aaa.model;


public class Doctor {

  private long docid;
  private String name;
  private String sex;
  private long age;
  private String idnum;
  private String phone;
  private java.sql.Timestamp hiredate;
  private long departid;
  private long postid;


  public long getDocid() {
    return docid;
  }

  public void setDocid(long docid) {
    this.docid = docid;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getSex() {
    return sex;
  }

  public void setSex(String sex) {
    this.sex = sex;
  }


  public long getAge() {
    return age;
  }

  public void setAge(long age) {
    this.age = age;
  }


  public String getIdnum() {
    return idnum;
  }

  public void setIdnum(String idnum) {
    this.idnum = idnum;
  }


  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }


  public java.sql.Timestamp getHiredate() {
    return hiredate;
  }

  public void setHiredate(java.sql.Timestamp hiredate) {
    this.hiredate = hiredate;
  }


  public long getDepartid() {
    return departid;
  }

  public void setDepartid(long departid) {
    this.departid = departid;
  }


  public long getPostid() {
    return postid;
  }

  public void setPostid(long postid) {
    this.postid = postid;
  }

}
