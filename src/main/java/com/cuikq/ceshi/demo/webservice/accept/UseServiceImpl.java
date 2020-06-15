package com.cuikq.ceshi.demo.webservice.accept;

/**
 * @author cuikq
 * @create 2020/4/14
 * @info
 */

public class UseServiceImpl implements UseService {
    @Override
    public String useM(String username) {
        return username;
    }
}
