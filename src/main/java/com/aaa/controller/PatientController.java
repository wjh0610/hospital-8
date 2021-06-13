package com.aaa.controller;

import com.aaa.model.*;
import com.aaa.service.PatientService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("patient")
public class PatientController {
    @Autowired
    private PatientService patientService;
    //查询所有患者
    @RequestMapping("selPatient")
    public ModelAndView selPatient(ModelAndView modelAndView){
        List<Patient> patients = patientService.selPatients();
        modelAndView.addObject("patients",patients);
        modelAndView.setViewName("patient");
        return modelAndView;
    }
    //查询急诊患者
    @RequestMapping("selPatient1")
    public ModelAndView selPatient1(ModelAndView modelAndView){
        List<Patient> patients = patientService.selPatient("1");
        modelAndView.addObject("patients",patients);
        modelAndView.setViewName("patient");
        return modelAndView;
    }
    //查询门诊患者
    @RequestMapping("selPatient2")
    public ModelAndView selPatient2(ModelAndView modelAndView){
        List<Patient> patients = patientService.selPatient("2");
        modelAndView.addObject("patients",patients);
        modelAndView.setViewName("patient");
        return modelAndView;
    }
    //查询住院患者
    @RequestMapping("selPatient3")
    public ModelAndView selPatient3(ModelAndView modelAndView){
        List<Patient> patients = patientService.selPatient("3");
        modelAndView.addObject("patients",patients);
        modelAndView.setViewName("patient");
        return modelAndView;
    }
    //查询住院部门信息
    @RequestMapping("selHosdept3")
    public void selHosdept3(HttpServletRequest request,HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf8");
        response.setContentType("text/html;charset=utf8");
        response.setCharacterEncoding("utf-8");
        List<Hosdept> hosdepts = patientService.selHosdept3();
        ObjectMapper objectMapper = new ObjectMapper();
        String s = objectMapper.writeValueAsString(hosdepts);
        response.getWriter().print(s);
    }
    //查询所有部门信息
    @RequestMapping("selHosdept")
    public void selHosdept(HttpServletRequest request,HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf8");
        response.setContentType("text/html;charset=utf8");
        response.setCharacterEncoding("utf-8");
        List<Hosdept> hosdepts = patientService.selHosdept();
        hosdepts.remove(3);
        ObjectMapper objectMapper = new ObjectMapper();
        String s = objectMapper.writeValueAsString(hosdepts);
        response.getWriter().print(s);
    }
    //根据部门id查询科室信息
    @RequestMapping("selDepartmentsByDeptid")
    public void selDepartmentsByDeptid(HttpServletRequest request,HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf8");
        response.setContentType("text/html;charset=utf8");
        response.setCharacterEncoding("utf-8");
        String deptid = request.getParameter("deptid");
        List<Departments> departments = patientService.selDepartmentsByDeptid(deptid);
        ObjectMapper objectMapper = new ObjectMapper();
        String s = objectMapper.writeValueAsString(departments);
        response.getWriter().print(s);
    }
    //根据科室id查询医生
    @RequestMapping("selDoctorByDepartid")
    public void selDoctorByDepartid(HttpServletRequest request,HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf8");
        response.setContentType("text/html;charset=utf8");
        response.setCharacterEncoding("utf-8");
        String departid = request.getParameter("departid");
        List<Doctor> doctors = patientService.selDoctorByDepartid(departid);
        ObjectMapper objectMapper = new ObjectMapper();
        String s = objectMapper.writeValueAsString(doctors);
        response.getWriter().print(s);
    }
    //查询房间信息
    @RequestMapping("selRoomByStatus")
    public void selRoomByStatus(HttpServletRequest request,HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf8");
        response.setContentType("text/html;charset=utf8");
        response.setCharacterEncoding("utf-8");
        List<Hosroom> hosrooms = patientService.selRoomByStatus();
        ObjectMapper objectMapper = new ObjectMapper();
        String s = objectMapper.writeValueAsString(hosrooms);
        response.getWriter().print(s);
    }
    //根据房间id查询床位
    @RequestMapping("selBedByRoomid")
    public void selBedByRoomid(HttpServletRequest request,HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf8");
        response.setContentType("text/html;charset=utf8");
        response.setCharacterEncoding("utf-8");
        String roomid = request.getParameter("roomid");
        List<Hosbed> hosrooms = patientService.selBedByRoomid(roomid);
        ObjectMapper objectMapper = new ObjectMapper();
        String s = objectMapper.writeValueAsString(hosrooms);
        response.getWriter().print(s);
    }
    //添加患者
    @RequestMapping("addPatient")
    @ResponseBody
    public void addPatient(Patient patient,HttpServletRequest request, HttpServletResponse response) throws IOException {
        String deptid = request.getParameter("deptid");
        if (deptid.equals("3")){
            Date date=new Date();
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String startime = sdf.format(date);
            patient.setStartime(startime);
            patientService.addPatient(patient);
            String bedid = request.getParameter("bedid");
            patientService.updBedStatus(bedid);
            response.sendRedirect(request.getContextPath()+"/patient/selPatient");
        }else {
            patientService.addPatient2(patient);
            response.sendRedirect(request.getContextPath()+"/patient/selPatient");
        }

    }
    //根据证件号查询住院患者信息
    @RequestMapping("selPatientByIdnum")
    public void selPatientByIdnum(HttpServletRequest request,HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf8");
        response.setContentType("text/html;charset=utf8");
        response.setCharacterEncoding("utf-8");
        String idnum = request.getParameter("idnum");
        Patient patient = patientService.selPatientByIdnum(idnum);
        ObjectMapper objectMapper = new ObjectMapper();
        String s = objectMapper.writeValueAsString(patient);
        response.getWriter().print(s);
    }
    //修改患者信息
    @RequestMapping("updPatient")
    @ResponseBody
    public void updPatient(Patient patient,HttpServletRequest request, HttpServletResponse response) throws IOException {
        String deptid = request.getParameter("deptid");
        if (deptid.equals("3")){
            String oldbedid = request.getParameter("oldbedid");
            if (oldbedid!=""){
                patientService.updoldBedStatus(oldbedid);
            } else {
                Date date=new Date();
                SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                String startime = sdf.format(date);
                patient.setStartime(startime);
            }
            patientService.updPatient(patient);
            String bedid = request.getParameter("bedid");
            patientService.updBedStatus(bedid);
            response.sendRedirect(request.getContextPath()+"/patient/selPatient");
        }else {
            patientService.updPatient2(patient);
            response.sendRedirect(request.getContextPath()+"/patient/selPatient");
        }
    }

    //查询预订
    @RequestMapping("selReg")
    public ModelAndView selReg(ModelAndView modelAndView){
        List<Registration> registrations = patientService.selReg();
        modelAndView.addObject("regs",registrations);
        modelAndView.setViewName("registration");
        return modelAndView;
    }
    //根据证件号查询预约患者信息
    @RequestMapping("selRegByIdnum")
    public void selRegByIdnum(HttpServletRequest request,HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf8");
        response.setContentType("text/html;charset=utf8");
        response.setCharacterEncoding("utf-8");
        String idnum = request.getParameter("idnum");
        Registration registration = patientService.selRegByIdnum(idnum);
        ObjectMapper objectMapper = new ObjectMapper();
        String s = objectMapper.writeValueAsString(registration);
        response.getWriter().print(s);
    }
    //预订患者就医
    @RequestMapping("updReg")
    @ResponseBody
    public void updReg(Patient patient,Registrationhis registrationhis,HttpServletRequest request, HttpServletResponse response) throws IOException {
        String deptid = request.getParameter("deptid");
        String idnum = request.getParameter("idnum");
        if (!deptid.equals("3")){
            patientService.addPatient2(patient);
            patientService.delReg(idnum);
            Date date=new Date();
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String jydate = sdf.format(date);
            registrationhis.setJydate(jydate);
            String dept = request.getParameter("dept");
            String depart = request.getParameter("depart");
            String doc = request.getParameter("doc");
            registrationhis.setDeptid(dept);
            registrationhis.setDepartid(depart);
            registrationhis.setDocid(doc);
            patientService.addRegHis(registrationhis);
            response.sendRedirect(request.getContextPath()+"/patient/selReg");
        }else{
            Date date=new Date();
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String startime = sdf.format(date);
            patient.setStartime(startime);
            patientService.addPatient(patient);
            patientService.delReg(idnum);
            registrationhis.setJydate(startime);
            String dept = request.getParameter("dept");
            String depart = request.getParameter("depart");
            String doc = request.getParameter("doc");
            registrationhis.setDeptid(dept);
            registrationhis.setDepartid(depart);
            registrationhis.setDocid(doc);
            patientService.addRegHis(registrationhis);
            String bedid = request.getParameter("bedid");
            patientService.updBedStatus(bedid);
            response.sendRedirect(request.getContextPath()+"/patient/selReg");
        }
    }
    //查询药品类型
    @RequestMapping("selMedType")
    public void selMedType(HttpServletRequest request,HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf8");
        response.setContentType("text/html;charset=utf8");
        response.setCharacterEncoding("utf-8");
        List<Medtype> medtypes = patientService.selMedType();
        ObjectMapper objectMapper = new ObjectMapper();
        String s = objectMapper.writeValueAsString(medtypes);
        response.getWriter().print(s);
    }
    //根据药品类型查询药品名字
    @RequestMapping("selMedByType")
    public void selMedByType(HttpServletRequest request,HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf8");
        response.setContentType("text/html;charset=utf8");
        response.setCharacterEncoding("utf-8");
        String mtype = request.getParameter("mtype");
        List<Medicine> medicines = patientService.selMedByType(mtype);
        ObjectMapper objectMapper = new ObjectMapper();
        String s = objectMapper.writeValueAsString(medicines);
        response.getWriter().print(s);
    }
    //根据药品名字查询库存和售价
    @RequestMapping("selMedByMname")
    public void selMedByMname(HttpServletRequest request,HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf8");
        response.setContentType("text/html;charset=utf8");
        response.setCharacterEncoding("utf-8");
        String mname = request.getParameter("mname");
        List<Medicine> medicines = patientService.selMedByMname(mname);
        ObjectMapper objectMapper = new ObjectMapper();
        String s = objectMapper.writeValueAsString(medicines);
        response.getWriter().print(s);
    }
    //开药
    @RequestMapping("addPre")
    @ResponseBody
    public void addPre(Medicine medicine,Prescription prescription,HttpServletRequest request,HttpServletResponse response) throws Exception {
        Date date=new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String startime = sdf.format(date);
        prescription.setKydate(startime);
        String mtype2 = request.getParameter("mtype2");
        prescription.setMtype(mtype2);
        patientService.addPre(prescription);
        String num = request.getParameter("num");
        String mname = request.getParameter("mname");
        medicine.setMname(mname);
        medicine.setNum(num);
        patientService.updMed(medicine);
        String dept = request.getParameter("dept");
        if (dept.equals("1")){
            response.sendRedirect(request.getContextPath()+"/patient/selPatient");
        }else if (dept.equals("2")){
            response.sendRedirect(request.getContextPath()+"/patient/selPatient");
        }
    }
    //删除患者信息
    @RequestMapping("delPatient")
    @ResponseBody
    public void delPatient(Patienthis patienthis,HttpServletRequest request, HttpServletResponse response) throws IOException {
        String dept1 = request.getParameter("dept");
        if (dept1.equals("住院部门")){
            String idnum = request.getParameter("idnum");
            Patient patient = patientService.selPatientByIdnum(idnum);
            patientService.updoldBedStatus(patient.getBedid());
            patienthis.setName(patient.getName());
            patienthis.setSex(patient.getSex());
            patienthis.setAge(patient.getAge());
            patienthis.setIdnum(patient.getIdnum());
            patienthis.setPhone(patient.getPhone());
            String dept = request.getParameter("dept");
            patienthis.setDept(dept);
            String depart = request.getParameter("depart");
            patienthis.setDepart(depart);
            String doc = request.getParameter("doc");
            patienthis.setDoc(doc);
            patienthis.setIntro(patient.getIntro());
            patienthis.setStartime(patient.getStartime());
            String room = request.getParameter("room");
            patienthis.setRoom(room);
            String bed = request.getParameter("bed");
            patienthis.setBed(bed);
            Date date=new Date();
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String endtime = sdf.format(date);
            patienthis.setEndtime(endtime);
            patientService.addPatienthis(patienthis);
            patientService.delPatient(idnum);
            response.sendRedirect(request.getContextPath()+"/patient/selPatient");
        }else {
            String idnum = request.getParameter("idnum");
            Patient patient = patientService.selPatientByIdnum(idnum);
            patienthis.setName(patient.getName());
            patienthis.setSex(patient.getSex());
            patienthis.setAge(patient.getAge());
            patienthis.setIdnum(patient.getIdnum());
            patienthis.setPhone(patient.getPhone());
            String dept = request.getParameter("dept");
            patienthis.setDept(dept);
            String depart = request.getParameter("depart");
            patienthis.setDepart(depart);
            String doc = request.getParameter("doc");
            patienthis.setDoc(doc);
            patienthis.setIntro(patient.getIntro());
            patientService.addPatienthis2(patienthis);
            patientService.delPatient(idnum);
            response.sendRedirect(request.getContextPath()+"/patient/selPatient");
        }
    }
    //查看患者开药记录
    @RequestMapping("selPreByIdnum")
    public void selPreByIdnum(HttpServletRequest request,HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf8");
        response.setContentType("text/html;charset=utf8");
        response.setCharacterEncoding("utf-8");
        String idnum = request.getParameter("idnum");
        List<Prescription> prescriptions = patientService.selPreByIdnum(idnum);
        ObjectMapper objectMapper = new ObjectMapper();
        String s = objectMapper.writeValueAsString(prescriptions);
        response.getWriter().print(s);
    }
    //根据姓名查询患者
    @RequestMapping("selPatientByName")
    public ModelAndView selPatientByName(ModelAndView modelAndView,HttpServletRequest request){
        String name = request.getParameter("name");
        List<Patient> patients = patientService.selPatientByName(name);
        modelAndView.addObject("patients",patients);
        modelAndView.setViewName("patient");
        return modelAndView;
    }
    //患者记录
    @RequestMapping("selPatHis")
    public ModelAndView selPatHis(ModelAndView modelAndView,HttpServletRequest request){
        String name = request.getParameter("name");
        List<Patienthis> patients = patientService.selPatHis();
        modelAndView.addObject("patients",patients);
        modelAndView.setViewName("pathis");
        return modelAndView;
    }
    //预约记录
    @RequestMapping("selRegHis")
    public ModelAndView selRegHis(ModelAndView modelAndView,HttpServletRequest request){
        String name = request.getParameter("name");
        List<Registrationhis> registrationhis = patientService.selRegHis();
        modelAndView.addObject("regs",registrationhis);
        modelAndView.setViewName("reghis");
        return modelAndView;
    }
    //预约记录
    @RequestMapping("selPreHis")
    public ModelAndView selPreHis(ModelAndView modelAndView,HttpServletRequest request){
        String name = request.getParameter("name");
        List<Prescription> prescriptions = patientService.selPreHis();
        modelAndView.addObject("pres",prescriptions);
        modelAndView.setViewName("prehis");
        return modelAndView;
    }
    //根据姓名查询患者记录
    @RequestMapping("selPatHisByName")
    public ModelAndView selPatHisByName(ModelAndView modelAndView,HttpServletRequest request){
        String name = request.getParameter("name");
        List<Patienthis> patienthis = patientService.selPatHisByName(name);
        modelAndView.addObject("patients",patienthis);
        modelAndView.setViewName("pathis");
        return modelAndView;
    }
    //根据证件查询预订记录
    @RequestMapping("selRegHisByIdnum")
    public ModelAndView selRegHisByIdnum(ModelAndView modelAndView,HttpServletRequest request){
        String idnum = request.getParameter("idnum");
        List<Registrationhis> registrationhis = patientService.selRegHisByIdnum(idnum);
        modelAndView.addObject("regs",registrationhis);
        modelAndView.setViewName("reghis");
        return modelAndView;
    }
    //根据证件查询开药记录
    @RequestMapping("selPreHisByIdnum")
    public ModelAndView selPreHisByIdnum(ModelAndView modelAndView,HttpServletRequest request){
        String idnum = request.getParameter("idnum");
        List<Prescription> prescriptions = patientService.selPreHisByIdnum(idnum);
        modelAndView.addObject("pres",prescriptions);
        modelAndView.setViewName("prehis");
        return modelAndView;
    }
}
