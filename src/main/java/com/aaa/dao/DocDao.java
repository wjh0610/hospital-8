package com.aaa.dao;

import com.aaa.model.Doctor;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface DocDao {
    @Select("select * from doctor where docid=#{docid}")
    Doctor selByDocid(Integer docid);
}
