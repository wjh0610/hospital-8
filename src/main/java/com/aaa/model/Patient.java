package com.aaa.model;


import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Patient {

  private String patientid;
  private String name;
  private String sex;
  private String age;
  private String idnum;
  private String phone;
  private String deptid;
  private String departid;
  private String docid;
  private String intro;

  private String startime;

  private String roomid;
  private String bedid;
  private Hosdept hosdept;
  private Departments departments;
  private Doctor doctor;
  private Hosroom hosroom;
  private Hosbed hosbed;

  @Override
  public String toString() {
    return "Patient{" +
            "patientid='" + patientid + '\'' +
            ", name='" + name + '\'' +
            ", sex='" + sex + '\'' +
            ", age='" + age + '\'' +
            ", idnum='" + idnum + '\'' +
            ", phone='" + phone + '\'' +
            ", deptid='" + deptid + '\'' +
            ", departid='" + departid + '\'' +
            ", docid='" + docid + '\'' +
            ", intro='" + intro + '\'' +
            ", startime='" + startime + '\'' +
            ", roomid='" + roomid + '\'' +
            ", bedid='" + bedid + '\'' +
            ", hosdept=" + hosdept +
            ", departments=" + departments +
            ", doctor=" + doctor +
            ", hosroom=" + hosroom +
            ", hosbed=" + hosbed +
            '}';
  }

  public String getPatientid() {
    return patientid;
  }

  public void setPatientid(String patientid) {
    this.patientid = patientid;
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

  public String getIntro() {
    return intro;
  }

  public void setIntro(String intro) {
    this.intro = intro;
  }

  public String getStartime() {
    return startime;
  }

  public void setStartime(String startime) {
    this.startime = startime;
  }
  public String getRoomid() {
    return roomid;
  }

  public void setRoomid(String roomid) {
    this.roomid = roomid;
  }

  public String getBedid() {
    return bedid;
  }

  public void setBedid(String bedid) {
    this.bedid = bedid;
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

  public Hosroom getHosroom() {
    return hosroom;
  }

  public void setHosroom(Hosroom hosroom) {
    this.hosroom = hosroom;
  }

  public Hosbed getHosbed() {
    return hosbed;
  }

  public void setHosbed(Hosbed hosbed) {
    this.hosbed = hosbed;
  }
}
