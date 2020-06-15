package com.cuikq.ceshi.demo.webservice.accept;

import com.alibaba.fastjson.JSONObject;
import com.inspur.oa.baseconfig.api.ApiResponse;
import org.apache.cxf.jaxws.endpoint.dynamic.JaxWsDynamicClientFactory;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author cuikq
 * @create 2020/4/14
 * @info
 */
@RestController
@RequestMapping("/v1")
public class acceptWeb {

    @PostMapping("/update")
    public ApiResponse updatePrintTemplate() throws Exception {
     /*   String result = WebserviceUtil.getWebServiceByUrl(UseServiceImpl.class,"http://10.72.94.151:9001/webservice" +
                "/TestService?wsdl").useM("jiaofangzhong");
        return ApiResponse.success(result);*/


        JaxWsDynamicClientFactory dcf = JaxWsDynamicClientFactory.newInstance();
/*
        org.apache.cxf.endpoint.Client client = dcf.createClient("http://10.72.94.151:9001/webservice/TestService?wsdl");
*/
        org.apache.cxf.endpoint.Client client = dcf.createClient("http://ws.webxml.com.cn/WebServices/MobileCodeWS.asmx?WSDL");

        Object[] objects = client.invoke("getDatabaseInfo");
        //System.out.println("*****" + objects[0].toString());
        return ApiResponse.success(objects);

    }

    //中英互译
    @PostMapping("/chineseTranEnglish")
    public ApiResponse selectWeatherByCityName(@RequestBody JSONObject param) throws Exception {
        String word = param.getString("word");
        JaxWsDynamicClientFactory dcf = JaxWsDynamicClientFactory.newInstance();
        org.apache.cxf.endpoint.Client client = dcf.createClient("http://ws.webxml.com.cn/WebServices/TranslatorWebService.asmx?WSDL");
        Object[] objects = client.invoke("getEnCnTwoWayTranslator",word);
        return ApiResponse.success(objects);

    }


}
