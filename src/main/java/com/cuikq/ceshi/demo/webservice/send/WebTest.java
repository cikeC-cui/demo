package com.cuikq.ceshi.demo.webservice.send;

import org.apache.cxf.Bus;
import org.apache.cxf.jaxws.EndpointImpl;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.xml.ws.Endpoint;

/**
 * @author cuikq
 * @create 2020/4/14
 * @info
 */
@Configuration
public class WebTest {
    @Autowired
    private Bus bus;
    @Autowired
    private TextService testService;


        public static void main(String[] args) {

            Endpoint.publish("http://127.0.0.1:12345/weather", new TestServiceImpl());

        }
    @Bean
    public Endpoint endpoint(){
        EndpointImpl endpoint = new EndpointImpl(bus, testService);
        endpoint.publish("/TestService");
        return endpoint;
    }
//EndpointImpl endpoint = new EndpointImpl(, new TestServiceImpl());
    //endpoint.publish("/testService111");

}
