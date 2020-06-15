package com.cuikq.ceshi.demo.api;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.gson.JsonObject;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author cuikq
 * @create 2019/12/30
 * @info
 */
@RestController
@RequestMapping("/mailInfoApi")
@CrossOrigin
public class demoApi {
    @Resource
    private testMapper testMapper;
    @RequestMapping(value ="/insertMailInfo")
    public  Object insertMailInfo(){
        List list = testMapper.queryInfoByFileSign();
        return list;
    }

    @RequestMapping("/add")
    public String add(HttpServletRequest request){
        request.setAttribute("personId",12);
        return "index.html";
    }

    @RequestMapping(value ="/infoList")
    public  Object infoList(){
        Map<String, Object> result = new HashMap<>(5);
        List list = testMapper.queryInfoByFileSign();
        result.put("total", 10);
        result.put("rows", list);
        return result;
    }

    @RequestMapping(value = "/addInfo", method = RequestMethod.POST)
    public Object addInfo(@RequestBody JSONObject param){
        String userId = param.getString("userId");

        int flag =  testMapper.addInfo(param);
        return flag;
    }

}
