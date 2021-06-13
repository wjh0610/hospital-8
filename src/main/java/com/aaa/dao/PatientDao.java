package com.aaa.dao;

import com.aaa.model.*;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface PatientDao {
//    查询所有患者
    @Select("select * from patient")
    @Results({
            @Result(column = "name",property = "name"),
            @Result(column = "sex",property = "sex"),
            @Result(column = "age",property = "age"),
            @Result(column = "idnum",property = "idnum"),
            @Result(column = "phone",property = "phone"),
            @Result(column = "deptid",property = "hosdept",
            one = @One(select = "com.aaa.dao.HosdeptDao.selByDeptid")),
            @Result(column = "departid",property = "departments",
            one = @One(select = "com.aaa.dao.DepartDao.selByDepartid")),
            @Result(column = "docid",property = "doctor",
            one = @One(select = "com.aaa.dao.DocDao.selByDocid")),
            @Result(column = "intro",property = "intro"),
            @Result(column = "startime",property = "startime"),
            @Result(column = "roomid",property = "hosroom",
            one = @One(select = "com.aaa.dao.RoomDao.selByRoomid")),
            @Result(column = "bedid",property = "hosbed",
            one = @One(select = "com.aaa.dao.BedDao.selByBedid"))
    })
    List<Patient> selPatients();
    @Select("select * from patient where deptid=#{deptid}")
    @Results({
            @Result(column = "name",property = "name"),
            @Result(column = "sex",property = "sex"),
            @Result(column = "age",property = "age"),
            @Result(column = "idnum",property = "idnum"),
            @Result(column = "phone",property = "phone"),
            @Result(column = "deptid",property = "hosdept",
                    one = @One(select = "com.aaa.dao.HosdeptDao.selByDeptid")),
            @Result(column = "departid",property = "departments",
                    one = @One(select = "com.aaa.dao.DepartDao.selByDepartid")),
            @Result(column = "docid",property = "doctor",
                    one = @One(select = "com.aaa.dao.DocDao.selByDocid")),
            @Result(column = "intro",property = "intro"),
            @Result(column = "startime",property = "startime"),
            @Result(column = "roomid",property = "hosroom",
                    one = @One(select = "com.aaa.dao.RoomDao.selByRoomid")),
            @Result(column = "bedid",property = "hosbed",
                    one = @One(select = "com.aaa.dao.BedDao.selByBedid"))
    })
    List<Patient> selPatient(String deptid);
    //查询部门表
    @Select("select * from hosdept")
    List<Hosdept> selHosdept();
    //查询住院部门信息
    @Select("select * from hosdept where deptid=3")
    List<Hosdept> selHosdept3();
    //根据部门id查询对应科室
    @Select("select * from departments where deptid=#{deptid}")
    List<Departments> selDepartmentsByDeptid(String deptid);
    //根据科室id查询对应医生
    @Select("select * from doctor where departid=#{departid}")
    List<Doctor> selDoctorByDepartid(String departid);
    //查询房间信息
    @Select("select * from hosroom where status=1")
    List<Hosroom> selRoomByStatus();
    //根据床位状态，房间id查询床位
    @Select("select * from hosbed where roomid=#{roomid} and status=1")
    List<Hosbed> selBedByRoomid(String roomid);
    //根据床位id修改床位状态
    @Update("update hosbed set status=2 where bedid=#{bedid}")
    void updBedStatus(String bedid);
    //添加住院患者
    @Insert("insert into patient(name,sex,age,idnum,phone,deptid,departid,docid,intro,startime,roomid,bedid)values(#{name},#{sex},#{age},#{idnum},#{phone},#{deptid},#{departid},#{docid},#{intro},#{startime},#{roomid},#{bedid})")
    void addPatient(Patient patient);
    //根据证件号查询患者
    @Select("select * from patient where idnum=#{idnum}")
    Patient selPatientByIdnum(String idnum);
    //修改住院患者信息
    @Update("update patient set name=#{name},sex=#{sex},age=#{age},idnum=#{idnum},phone=#{phone},deptid=#{deptid},departid=#{departid},docid=#{docid},intro=#{intro},startime=#{startime},roomid=#{roomid},bedid=#{bedid} where idnum=#{idnum}")
    void updPatient(Patient patient);
    //修改原房间状态
    @Update("update hosbed set status=1 where bedid=#{bedid}")
    void updoldBedStatus(String bedid);
    //添加非住院患者
    @Insert("insert into patient(name,sex,age,idnum,phone,deptid,departid,docid,intro)values(#{name},#{sex},#{age},#{idnum},#{phone},#{deptid},#{departid},#{docid},#{intro})")
    void addPatient2(Patient patient);
    //修改非住院患者信息
    @Update("update patient set name=#{name},sex=#{sex},age=#{age},idnum=#{idnum},phone=#{phone},deptid=#{deptid},departid=#{departid},docid=#{docid},intro=#{intro} where idnum=#{idnum}")
    void updPatient2(Patient patient);
    //查询预定信息
    @Select("select * from registration")
    @Results({
            @Result(column = "name",property = "name"),
            @Result(column = "sex",property = "sex"),
            @Result(column = "age",property = "age"),
            @Result(column = "idnum",property = "idnum"),
            @Result(column = "phone",property = "phone"),
            @Result(column = "deptid",property = "hosdept",
                    one = @One(select = "com.aaa.dao.HosdeptDao.selByDeptid")),
            @Result(column = "departid",property = "departments",
                    one = @One(select = "com.aaa.dao.DepartDao.selByDepartid")),
            @Result(column = "docid",property = "doctor",
                    one = @One(select = "com.aaa.dao.DocDao.selByDocid")),
            @Result(column = "rdate",property = "rdate"),
            @Result(column = "intro",property = "intro")
    })
    List<Registration> selReg();
    //根据证件号查询预约患者信息
    @Select("select * from registration where idnum=#{idnum}")
    Registration selRegByIdnum(String idnum);
    //根据证件号删除预约表信息
    @Delete("delete from registration where idnum=#{idnum}")
    void delReg(String idnum);
    //添加预约历史记录
    @Insert("insert into registrationhis(name,sex,age,idnum,phone,deptid,departid,docid,rdate,intro,jydate)values(#{name},#{sex},#{age},#{idnum},#{phone},#{deptid},#{departid},#{docid},#{rdate},#{intro},#{jydate})")
    void addRegHis(Registrationhis registrationhis);
    //查询药品类型
    @Select("select * from medtype")
    List<Medtype> selMedType();
    //根据药品类型查询药品名字
    @Select("select * from medicine where mtype=#{mtype}")
    List<Medicine> selMedByType(String mtype);
    //根据药品名字查询库存和售价
    @Select("select * from medicine where mname=#{mname}")
    List<Medicine> selMedByMname(String mname);
    //开药
    @Insert("insert into prescription(name,idnum,phone,doctor,mtype,mname,oprice,snum,zj,kydate)values(#{name},#{idnum},#{phone},#{doctor},#{mtype},#{mname},#{oprice},#{snum},#{zj},#{kydate})")
    void addPre(Prescription prescription);
    //根据药名改药品库存
    @Update("update medicine set num=#{num} where mname=#{mname}")
    void updMed(Medicine medicine);
    //删除患者信息
    @Delete("delete from patient where idnum=#{idnum}")
    void delPatient(String idnum);
    //添加患者历史记录
    @Insert("insert into patienthis(name,sex,age,idnum,phone,dept,depart,doc,intro,startime,room,bed,endtime)values(#{name},#{sex},#{age},#{idnum},#{phone},#{dept},#{depart},#{doc},#{intro},#{startime},#{room},#{bed},#{endtime})")
    void addPatienthis(Patienthis patienthis);
    @Insert("insert into patienthis(name,sex,age,idnum,phone,dept,depart,doc,intro)values(#{name},#{sex},#{age},#{idnum},#{phone},#{dept},#{depart},#{doc},#{intro})")
    void addPatienthis2(Patienthis patienthis);
    //查询患者开药记录
    @Select("select * from prescription where idnum=#{idnum}")
    List<Prescription> selPreByIdnum(String idnum);
    //根据姓名查询患者
    @Select("select * from patient where name like concat('%',#{name},'%')")
    @Results({
            @Result(column = "name",property = "name"),
            @Result(column = "sex",property = "sex"),
            @Result(column = "age",property = "age"),
            @Result(column = "idnum",property = "idnum"),
            @Result(column = "phone",property = "phone"),
            @Result(column = "deptid",property = "hosdept",
                    one = @One(select = "com.aaa.dao.HosdeptDao.selByDeptid")),
            @Result(column = "departid",property = "departments",
                    one = @One(select = "com.aaa.dao.DepartDao.selByDepartid")),
            @Result(column = "docid",property = "doctor",
                    one = @One(select = "com.aaa.dao.DocDao.selByDocid")),
            @Result(column = "intro",property = "intro"),
            @Result(column = "startime",property = "startime"),
            @Result(column = "roomid",property = "hosroom",
                    one = @One(select = "com.aaa.dao.RoomDao.selByRoomid")),
            @Result(column = "bedid",property = "hosbed",
                    one = @One(select = "com.aaa.dao.BedDao.selByBedid"))
    })
    List<Patient> selPatientByName(String name);
    //患者记录
    @Select("select * from patienthis")
    List<Patienthis> selPatHis();
    //预订记录
    @Select("select * from registrationhis")
    List<Registrationhis> selRegHis();
    //开药记录
    @Select("select * from prescription")
    List<Prescription> selPreHis();
    //根据姓名查询患者记录
    @Select("select * from patienthis where name like concat('%',#{name},'%')")
    List<Patienthis> selPatHisByName(String name);
    //根据证件号查询预订记录
    @Select("select * from registrationhis where idnum like concat('%',#{idnum},'%')")
    List<Registrationhis> selRegHisByIdnum(String idnum);
    //根据证件查询开药记录
    @Select("select * from prescription where idnum like concat('%',#{idnum},'%')")
    List<Prescription> selPreHisByIdnum(String idnum);
}
