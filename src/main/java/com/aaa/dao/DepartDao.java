package com.aaa.dao;

import com.aaa.model.Departments;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface DepartDao {
    @Select("select * from departments where departid=#{departid}")
    Departments selByDepartid(Integer departid);
}
