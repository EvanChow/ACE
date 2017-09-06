package com.avalon.controller.calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avalon.model.calendar.CalendarDay;
import com.avalon.service.calendar.CalendarService;
import com.avalon.util.SysUtil;
import com.avalon.vo.Json;

@Controller
@RequestMapping("/calendar")
public class CalendarCtrl {
    
    @Autowired
    private CalendarService calendarservice;
    
    @RequestMapping("/views")
    @ResponseBody
    public Json getviews(CalendarDay entity){
        Json json=new Json();
        List<CalendarDay> list=calendarservice.getAll(entity);
        json.setData(list);
        return json;
    }
    
    @RequestMapping("/add")
    @ResponseBody
    public Json add(CalendarDay entity){
        Json json=new Json();
        String id=SysUtil.createID("CID");
        entity.setId(id);
        entity.setCreatetime(new Date());
        entity.setUpdatetime(new Date());
        entity.setStatus("1");
        json.setId(id);
        json.setSuccess(calendarservice.add(entity));
        return json;
    }
    
    
    @RequestMapping("/update")
    @ResponseBody
    public Json update(CalendarDay entity){
        Json json=new Json();
        entity.setUpdatetime(new Date());
        json.setSuccess(calendarservice.update(entity));
        return json;
    }
    
    @RequestMapping("/del")
    @ResponseBody
    public Json del(CalendarDay entity){
        Json json=new Json();
        json.setSuccess(calendarservice.del(entity));
        return json;
    }
    
    
    
}
