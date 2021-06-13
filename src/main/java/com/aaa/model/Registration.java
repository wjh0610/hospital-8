package com.aaa.model;


public class Registration {

  private String rid;
  private String name;
  private String sex;
  private String age;
  private String idnum;
  private String phone;
  private String deptid;
  private String departid;
  private String docid;
  private String rdate;
  private String intro;
  private Hosdept hosdept;
  private Departments departments;
  private Doctor doctor;

  public String getRid() {
    return rid;
  }

  public void setRid(String rid) {
    this.rid = rid;
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

  public String getAge() {
    return age;
  }

  public void setAge(String age) {
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

  public String getDeptid() {
    return deptid;
  }

  public void setDeptid(String deptid) {
    this.deptid = deptid;
  }

  public String getDepartid() {
    return departid;
  }

  public void setDepartid(String departid) {
    this.departid = departid;
  }

  public String getDocid() {
    return docid;
  }

  public void setDocid(String docid) {
    this.docid = docid;
  }

  public String getRdate() {
    return rdate;
  }

  public void setRdate(String rdate) {
    this.rdate = rdate;
  }

  public String getIntro() {
    return intro;
  }

  public void setIntro(String intro) {
    this.intro = intro;
  }

  public Hosdept getHosdept() {
    return hosdept;
  }

  public void setHosdept(Hosdept hosdept) {
    this.hosdept = hosdept;
  }

  public Departments getDepartments() {
    return departments;
  }

  public void setDepartments(Departments departments) {
    this.departments = departments;
  }

  public Doctor getDoctor() {
    return doctor;
  }

  public void setDoctor(Doctor doctor) {
    this.doctor = doctor;
  }
}
