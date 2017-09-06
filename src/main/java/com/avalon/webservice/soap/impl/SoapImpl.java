package com.avalon.webservice.soap.impl;

import javax.jws.WebService;

@WebService
public interface SoapImpl {
    String sayHi(String xml);
    String sayHello(String xml);
}
