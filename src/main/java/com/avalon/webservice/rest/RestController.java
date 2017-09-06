package com.avalon.webservice.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.cxf.jaxrs.model.wadl.Description;
import org.apache.cxf.jaxrs.model.wadl.DocTarget;
import org.springframework.beans.factory.annotation.Autowired;

import com.avalon.service.webservice.CXFService;
import com.avalon.webservice.rest.impl.RestImpl;



//注解
//描述
//@Path
//@Path注解的值是一个相对的URI路径，这个路径指定了该Java类的位置，例如/helloworld。在这个URI中可以包含变量，例如可以获取用户的姓名然后作为参数传入URI中：/helloworld/{username}。
//@GET
//@GET注解是请求方法指示符，这个指示符注解的Java方法会处理HTTPGET请求。资源的行为由资源回应的HTTP方法决定。
//@POST
//@POST注解是请求方法指示符，这个指示符注解的Java方法会处理HTTPPOST请求。资源的行为由资源回应的HTTP方法决定。
//@PUT
//@PUT注解是请求方法指示符，这个指示符注解的Java方法会处理HTTPPUT请求。资源的行为由资源回应的HTTP方法决定。
//@DELETE
//@DELETE注解是请求方法指示符，这个指示符注解的Java方法会处理HTTPDELETE请求。资源的行为由资源回应的HTTP方法决定。
//@HEAD
//@HEAD注解是请求方法指示符，这个指示符注解的Java方法会处理HTTPHEAD请求。资源的行为由资源回应的HTTP方法决定。
//@PathParam
//@PathParam注解是可以抽取并用在资源类中的一类参数。URIpath参数是从请求的URI中抽取的，而且参数的名称和@Path注解中定义的变量名对应。
//@QueryParam
//@QueryParam注解是可以抽取并在资源类中使用的一类参数。Query参数是从请求URI的查询参数中抽取的。
//@Consumes
//@Consumes注解是用来指定资源能够接受的客户发送的MIME媒体类型。
//@Produces
//@Produces注解用来指定资源能够生成并发送给客户端的MIME媒体类型，例如“text/plain”.
//@Provider
//@Provider注解用在任何对JAX-RS运行时（如MessageBodyReader和MessageBodyWriter）有意义的事物上。对HTTP请求，MessageBodyReader用来将HTTP请求实体段映射为方法参数。在响应的时候，返回的值使用MessageBodyWriter来映射成HTTP响应实体段。如果应用程序需要提供其他的元数据，如HTTP头或不同的状态代码，方法可以返回一个打包了实体的Response，该Response可以使用Response.ResponseBuilder创建。
//implements  RestImpl

@Path(value = "/sample")
public class RestController implements  RestImpl{
    
    @Autowired
    private CXFService cxfservice;
    
    @GET
    @Path("/bean/{id}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    @Description(value = "展示XML格式资源详情", target = DocTarget.METHOD)
    public String getBean(@PathParam("id")int id) {
        String str=id+"";
        cxfservice.showMsg("<xml>"+str+"</xml>");
        return "<xml>"+str+"</xml>";
    }
    
    @GET
    @Path("/list")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    @Description(value = "展示JSON格式资源详情", target = DocTarget.METHOD)
    public String getBean2(@PathParam("id")int id) {
        String str=id+"";
        cxfservice.showMsg("{id:'"+str+"'}");
        return "{id:'"+str+"'}";
    }

}
