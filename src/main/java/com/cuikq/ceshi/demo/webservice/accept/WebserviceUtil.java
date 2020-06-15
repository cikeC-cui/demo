package com.cuikq.ceshi.demo.webservice.accept;
import lombok.extern.slf4j.Slf4j;
import org.apache.cxf.endpoint.Client;
import org.apache.cxf.frontend.ClientProxy;
import org.apache.cxf.jaxws.JaxWsProxyFactoryBean;
import org.apache.cxf.jaxws.endpoint.dynamic.JaxWsDynamicClientFactory;
import org.apache.cxf.transport.http.HTTPConduit;
import org.apache.cxf.transports.http.configuration.HTTPClientPolicy;

/**
 * 调用webservice工具类
 * @Author:jiaofangzhong
 * @Date:2020/2/12 09:30
 * @Version:1.0
 * @Description:
 **/
@Slf4j
public class WebserviceUtil {

    public static final int CXF_CLIENT_CONNECT_TIMEOUT = 30 * 1000;
    public static final int CXF_CLIENT_RECEIVE_TIMEOUT = 30 * 1000;

    /**
     * 用代理方式调用服务
     * @param clazz
     * @param url
     * @param <T>
     * @return
     */
    public static <T> T getWebServiceByUrl(Class<T> clazz, String url) {
        return getWebServiceByUrl(clazz, url, CXF_CLIENT_CONNECT_TIMEOUT, CXF_CLIENT_RECEIVE_TIMEOUT);
    }

    /**
     * 用代理方式调用服务
     * @param clazz
     * @param url
     * @param connetTimeout
     * @param receiveTimeout
     * @param <T>
     * @return
     */
    private static <T> T getWebServiceByUrl(Class<T> clazz, String url, Integer connetTimeout, Integer receiveTimeout) {
        // 用于创建JAX-WS代理的工厂，此类提供对用于设置代理的内部属性的访问。使用它可以提供比标准JAX-WS API更多的控制。
        JaxWsProxyFactoryBean factory = new JaxWsProxyFactoryBean();
        factory.setServiceClass(clazz);
        factory.setAddress(url);
        @SuppressWarnings("unchecked")
        // 创建可用于进行远程调用的代理对象。
        T webService = (T) factory.create();
        // 设置接口 连接超时和请求超时
        // 通过代理对象获取本地客户端
        Client proxy = ClientProxy.getClient(webService);
        // 通过本地客户端设置 网络策略配置
        HTTPConduit conduit = (HTTPConduit) proxy.getConduit();
        // 用于配置客户端HTTP端口的属性
        HTTPClientPolicy policy = new HTTPClientPolicy();
        // 超时控制 单位 : 毫秒
        policy.setConnectionTimeout(connetTimeout);
        policy.setReceiveTimeout(receiveTimeout);
        conduit.setClient(policy);
        return webService;
    }

    /**
     * 调用web服务,动态调用方式
     * @param addr
     * @param methodName
     * @param params
     * @return
     */
    public static String  sendWebservice(String addr,String methodName,Object[] params){
        JaxWsDynamicClientFactory jwdcf = JaxWsDynamicClientFactory.newInstance();
        Client client = jwdcf.createClient(addr);
        Object[] objects = new Object[0];
        try {
            objects = client.invoke(methodName,params);
            log.info("调用"+addr+"的"+methodName+"方法,返回值为"+objects[0]);
            return String.valueOf(objects[0]);
        } catch (Exception e) {
            e.printStackTrace();
            log.error("调用"+addr+"的"+methodName+"出现异常==",e);
        }
        return null;
    }

    public static void main(String[] args){
        System.out.println(">>>>>>>>>>>>>>>>>>>>");

    }
}
