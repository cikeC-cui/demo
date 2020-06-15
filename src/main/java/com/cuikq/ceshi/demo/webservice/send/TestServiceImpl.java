package com.cuikq.ceshi.demo.webservice.send;

import org.springframework.stereotype.Component;

import javax.jws.WebService;

@WebService(serviceName = "TestService", // 与接口中指定的name一致
        targetNamespace = "http://service.exchange.inspur.com", // 与接口中的命名空间一致,一般是接口的包名倒
        endpointInterface = "com.cuikq.ceshi.demo.webservice.send.TextService"// 接口地址
)
@Component
public class TestServiceImpl implements TextService {

    @Override
    public String sendMessage(String username) {
        return username + "cui";
    }
}
