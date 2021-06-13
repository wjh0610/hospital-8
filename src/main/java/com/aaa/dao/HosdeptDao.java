package com.aaa.dao;

import com.aaa.model.Hosdept;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface HosdeptDao {
    @Select("select * from hosdept where deptid=#{deptid}")
    Hosdept selByDeptid(Integer deptid);
}
