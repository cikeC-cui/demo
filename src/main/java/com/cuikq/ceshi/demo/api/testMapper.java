package com.cuikq.ceshi.demo.api;

import com.alibaba.fastjson.JSONObject;
import com.google.gson.JsonObject;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;


@Mapper
public interface testMapper {

    @Select("select * from user")
    public List<Map> queryInfoByFileSign();
    @Insert("insert into user(USER_ID,USER_NAME,IF_USE,PASSWORD) values (#{title},#{title},'1',#{password})")
    int addInfo(JSONObject  param);

}
