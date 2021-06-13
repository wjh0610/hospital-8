package com.aaa.service;

import com.aaa.model.*;

import java.util.List;

public interface PatientService {
    List<Patient> selPatients();
    List<Patient> selPatient(String deptid);
    List<Hosdept> selHosdept3();
    List<Hosdept> selHosdept();
    List<Departments> selDepartmentsByDeptid(String deptid);
    List<Doctor> selDoctorByDepartid(String departid);
    List<Hosroom> selRoomByStatus();
    List<Hosbed> selBedByRoomid(String roomid);
    void addPatient(Patient patient);
    void updBedStatus(String bedid);
    Patient selPatientByIdnum(String idnum);
    void updPatient(Patient patient);
    void updoldBedStatus(String bedid);
    void addPatient2(Patient patient);
    void updPatient2(Patient patient);
    List<Registration> selReg();
    Registration selRegByIdnum(String idnum);
    void delReg(String idnum);
    void addRegHis(Registrationhis registrationhis);
    List<Medtype> selMedType();
    List<Medicine> selMedByType(String mtype);
    List<Medicine> selMedByMname(String mname);
    void addPre(Prescription prescription);
    void updMed(Medicine medicine);
    void delPatient(String idnum);
    void addPatienthis(Patienthis patienthis);
    List<Prescription> selPreByIdnum(String idnum);
    void addPatienthis2(Patienthis patienthis);
    List<Patient> selPatientByName(String name);
    List<Patienthis> selPatHis();
    List<Registrationhis> selRegHis();
    List<Prescription> selPreHis();
    List<Patienthis> selPatHisByName(String name);
    List<Registrationhis> selRegHisByIdnum(String idnum);
    List<Prescription> selPreHisByIdnum(String idnum);
}
