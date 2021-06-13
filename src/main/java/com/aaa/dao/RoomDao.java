package com.aaa.dao;

import com.aaa.model.Hosroom;
import org.apache.ibatis.annotations.Select;

public interface RoomDao {
    @Select("select * from hosroom where roomid=#{roomid}")
    Hosroom selByRoomid(Integer roomid);
}
