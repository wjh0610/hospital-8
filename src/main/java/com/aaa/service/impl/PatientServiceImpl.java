package com.aaa.service.impl;

import com.aaa.dao.PatientDao;
import com.aaa.model.*;
import com.aaa.service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("patientService")
public class PatientServiceImpl implements PatientService {
    @Autowired
    private PatientDao patientDao;

    @Override
    public List<Patient> selPatients() {
        return patientDao.selPatients();
    }

    @Override
    public List<Patient> selPatient(String deptid) {
        return patientDao.selPatient(deptid);
    }

    @Override
    public List<Hosdept> selHosdept3() {
        return patientDao.selHosdept3();
    }

    @Override
    public List<Hosdept> selHosdept() {
        return patientDao.selHosdept();
    }

    @Override
    public void addPatient(Patient patient) {
        patientDao.addPatient(patient);
    }

    @Override
    public void updBedStatus(String bedid) {
        patientDao.updBedStatus(bedid);
    }

    @Override
    public Patient selPatientByIdnum(String idnum) {
        return patientDao.selPatientByIdnum(idnum);
    }

    @Override
    public void updPatient(Patient patient) {
        patientDao.updPatient(patient);
    }

    @Override
    public void updoldBedStatus(String bedid) {
        patientDao.updoldBedStatus(bedid);
    }

    @Override
    public void addPatient2(Patient patient) {
        patientDao.addPatient2(patient);
    }

    @Override
    public void updPatient2(Patient patient) {
        patientDao.updPatient2(patient);
    }

    @Override
    public List<Registration> selReg() {
        return patientDao.selReg();
    }

    @Override
    public Registration selRegByIdnum(String idnum) {
        return patientDao.selRegByIdnum(idnum);
    }

    @Override
    public void delReg(String idnum) {
        patientDao.delReg(idnum);
    }

    @Override
    public void addRegHis(Registrationhis registrationhis) {
        patientDao.addRegHis(registrationhis);
    }

    @Override
    public List<Medtype> selMedType() {
        return patientDao.selMedType();
    }

    @Override
    public List<Medicine> selMedByType(String mtype) {
        return patientDao.selMedByType(mtype);
    }

    @Override
    public List<Medicine> selMedByMname(String mname) {
        return patientDao.selMedByMname(mname);
    }

    @Override
    public void addPre(Prescription prescription) {
        patientDao.addPre(prescription);
    }

    @Override
    public void updMed(Medicine medicine) {
        patientDao.updMed(medicine);
    }

    @Override
    public void delPatient(String idnum) {
        patientDao.delPatient(idnum);
    }

    @Override
    public void addPatienthis(Patienthis patienthis) {
        patientDao.addPatienthis(patienthis);
    }

    @Override
    public List<Prescription> selPreByIdnum(String idnum) {
        return patientDao.selPreByIdnum(idnum);
    }

    @Override
    public void addPatienthis2(Patienthis patienthis) {
        patientDao.addPatienthis2(patienthis);
    }

    @Override
    public List<Patient> selPatientByName(String name) {
        return patientDao.selPatientByName(name);
    }

    @Override
    public List<Patienthis> selPatHis() {
        return patientDao.selPatHis();
    }

    @Override
    public List<Registrationhis> selRegHis() {
        return patientDao.selRegHis();
    }

    @Override
    public List<Prescription> selPreHis() {
        return patientDao.selPreHis();
    }

    @Override
    public List<Patienthis> selPatHisByName(String name) {
        return patientDao.selPatHisByName(name);
    }

    @Override
    public List<Registrationhis> selRegHisByIdnum(String idnum) {
        return patientDao.selRegHisByIdnum(idnum);
    }

    @Override
    public List<Prescription> selPreHisByIdnum(String idnum) {
        return patientDao.selPreHisByIdnum(idnum);
    }

    @Override
    public List<Departments> selDepartmentsByDeptid(String deptid) {
        return patientDao.selDepartmentsByDeptid(deptid);
    }

    @Override
    public List<Doctor> selDoctorByDepartid(String departid) {
        return patientDao.selDoctorByDepartid(departid);
    }

    @Override
    public List<Hosroom> selRoomByStatus() {
        return patientDao.selRoomByStatus();
    }

    @Override
    public List<Hosbed> selBedByRoomid(String roomid) {
        return patientDao.selBedByRoomid(roomid);
    }
}
