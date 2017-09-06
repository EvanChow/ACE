package com.avalon.webservice.rest.impl;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.cxf.jaxrs.model.wadl.Description;
import org.apache.cxf.jaxrs.model.wadl.DocTarget;

@Path(value = "/sample")
public interface RestImpl {
    
    @GET
    @Path("/bean/{id}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    @Description(value = "展示XML格式资源详情", target = DocTarget.METHOD)
    public String getBean(@PathParam("id") int id);

    @GET
    @Path("/list/{id}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    @Description(value = "展示JSON格式资源详情", target = DocTarget.METHOD)
    public String getBean2(@PathParam("id") int id);
}
