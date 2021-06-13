package com.aaa.dao;

import com.aaa.model.Hosbed;
import org.apache.ibatis.annotations.Select;

public interface BedDao {
    @Select("select * from hosbed where bedid=#{bedid}")
    Hosbed selByBedid(Integer bedid);
}
