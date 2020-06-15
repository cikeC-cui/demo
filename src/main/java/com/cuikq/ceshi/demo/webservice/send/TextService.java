package com.cuikq.ceshi.demo.webservice.send;

import org.springframework.stereotype.Service;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

@WebService(name = "TestService", // 暴露服务名称
        targetNamespace = "http://service.exchange.inspur.com"// 命名空间,一般是接口的包名倒序
)
public interface TextService {
    @WebMethod
    String sendMessage(@WebParam(name = "username") String username);


}
