package com.avalon.service.sys;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.avalon.dao.MyBatisDao;
import com.avalon.log.ILog;
import com.avalon.model.sys.Menu;
import com.avalon.util.ReaderProperty;

@Service
public class MenuService implements ILog{
    
    @Autowired
    private MyBatisDao<Menu> MyBatisMenuDao;
    
    @Autowired
    private SysLogService syslogService;
    
    @Autowired
    private MyBatisDao<List> MyBatisMenuListDao;
    
    /**
     * 
     * @方法名: addMenu
     * @功能描述: 添加菜单
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2017-1-3 下午03:02:33
     */
    public boolean  addMenu(Menu entity){
        try {
            return MyBatisMenuDao.add("MenuMapper.insertSelective", entity);
        } catch (Exception e) {
            //e.printStackTrace();
            loggerError.error(e.getMessage());
        }
        return false;
    }
    
    public Menu  selectMenu(Menu entity){
        try {
           return MyBatisMenuDao.get("MenuMapper.Selective", entity);
        } catch (Exception e) {
            //e.printStackTrace();
            loggerError.error(e.getMessage());
        }
        return new Menu();
    }
    
    public boolean   delMenu(Menu entity){
        try {
            return MyBatisMenuDao.remove("MenuMapper.delete", entity);
        } catch (Exception e) {
            //e.printStackTrace();
            loggerError.error(e.getMessage());
        }
        return false;
    }
    
    
    /**
     * 
     * @方法名: updateMenu
     * @功能描述: 更新菜单
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2017-1-3 下午03:13:28
     */
    public boolean updateMenu(Menu entity){
        try {
            return MyBatisMenuDao.edit("MenuMapper.updateByMenuidSelective", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return false;
    }
    
    /**
     * 
     * @方法名: DataPagination
     * @功能描述: 数据分页
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： 2017-1-3 下午03:48:20
     */
    public List<Menu> DataPagination(Menu entity){
        List<Menu> list=new ArrayList<Menu>();
        try {
            list=MyBatisMenuDao.getAllByEntity("MenuMapper.DataPagination", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        
        return list;
    }
    
    public int DataPaginationCount(Menu entity){
        int count=0;
        try {
            count= MyBatisMenuDao.getAllCount("MenuMapper.DataPaginationCount", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return count;
    }
    
    
    public List<Menu> TreeMenu(Menu entity){
        List<Menu> list=new ArrayList<Menu>();
        try {
            list=MyBatisMenuDao.getAllByEntity("MenuMapper.treeData", entity);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        
        return list;
    }
    
    
    /**
     * 
     * @方法名: TreeVO
     * @功能描述: 异步查询树结构
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 22, 2017 3:03:51 PM
     */
    public List<Object> TreeVO(String pid){
        List<Object> res=new ArrayList<Object>();
        
        Menu entity=new Menu();
        entity.setPid(pid);
        List<Menu> treemenu=TreeMenu(entity);
        for(Menu m:treemenu){
            Map<String,Object> menu=new HashMap<String,Object>();
            if(m.getIsmenu()==0){//
                //System.out.println("查询"+count+"级菜单");
                String id=m.getMenuid();
                menu.put("icon-class",m.getImg());
                menu.put("type","folder");
                menu.put("text","<i class='ace-icon "+m.getIcon()+" blue'></i>"+m.getMenuname());
                Map<String,Object> additionalParametersmap=new HashMap<String,Object>();
                additionalParametersmap.put("id",id);
                additionalParametersmap.put("children",null);
                additionalParametersmap.put("item-selected",false);
                menu.put("additionalParameters",additionalParametersmap);
                res.add(menu);
            }else{
                menu.put("icon-class",m.getImg());
                menu.put("type","item");
                menu.put("text","<i class='ace-icon "+m.getIcon()+" blue'></i>"+m.getMenuname());
                res.add(menu);
            }
        }
        return res;
    }
    
    /**
     * 
     * @方法名: treepid
     * @功能描述: 查询菜单
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 22, 2017 3:04:14 PM
     */
    public List<Object> treepid(String pid){
        List<Object> res=new ArrayList<Object>();
        
        Menu entity=new Menu();
        entity.setPid(pid);
        List<Menu> treemenu=TreeMenu(entity);
        for(Menu m:treemenu){
            Map<String,Object> menu=new HashMap<String,Object>();
            if(m.getIsmenu()==0){//
                String id=m.getMenuid();
                menu.put("icon-class",m.getImg());
                menu.put("type","folder");
                menu.put("text","<i class='ace-icon "+m.getIcon()+" blue'></i>"+m.getMenuname());
                Map<String,Object> additionalParametersmap=new HashMap<String,Object>();
                additionalParametersmap.put("id",id);
                additionalParametersmap.put("children",null);
                additionalParametersmap.put("item-selected",false);
                menu.put("additionalParameters",additionalParametersmap);
                res.add(menu);
            }
        }
        
        return res;
    }
    
    /**
     * 
     * @方法名: treepid
     * @功能描述: 查询菜单
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 22, 2017 3:04:14 PM
     */
    public List<Object> treepidAll(String pid){
        List<Object> res=new ArrayList<Object>();
        
        Menu entity=new Menu();
        entity.setPid(pid);
        List<Menu> treemenu=TreeMenu(entity);
        for(Menu m:treemenu){
            Map<String,Object> menu=new HashMap<String,Object>();
            if(m.getIsmenu()==0){//
                String id=m.getMenuid();
                menu.put("icon-class",m.getImg());
                menu.put("type","folder");
                menu.put("text","<i class='ace-icon "+m.getIcon()+" blue'></i>"+m.getMenuname());
                Map<String,Object> additionalParametersmap=new HashMap<String,Object>();
                additionalParametersmap.put("id",id);
                additionalParametersmap.put("children",null);
                additionalParametersmap.put("item-selected",false);
                menu.put("additionalParameters",additionalParametersmap);
                res.add(menu);
            }else{
                menu.put("icon-class",m.getImg());
                menu.put("type","item");
                menu.put("id",m.getMenuid());
                menu.put("text","<i class='ace-icon "+m.getIcon()+" blue'></i>"+m.getMenuname());
                res.add(menu);
            }
        }
        
        return res;
    }
    
    /**
     * 
     * @方法名: treeMapVo
     * @功能描述: 查询全部
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 22, 2017 3:04:27 PM
     */
    public List<Object> treeMapVo(String pid){
        List<Object> res=new ArrayList<Object>();
        
        Menu entity=new Menu();
        entity.setPid(pid);
        List<Menu> treemenu=TreeMenu(entity);
        for(Menu m:treemenu){
            Map<String,Object> menu=new HashMap<String,Object>();
            if(m.getIsmenu()==0){//
                //System.out.println("查询"+count+"级菜单");
                String id=m.getMenuid();
                menu.put("icon-class",m.getImg());
                menu.put("type","folder");
                menu.put("menu",m);
                menu.put("text","<i class='menu-icon  "+m.getIcon()+" blue'></i>"+m.getMenuname());
                Map<String,Object> additionalParametersmap=new HashMap<String,Object>();
                //additionalParametersmap.put("icon",m.getIcon());
                additionalParametersmap.put("id",id);
                additionalParametersmap.put("children",treeMapVo(id));
                additionalParametersmap.put("item-selected",false);
                menu.put("additionalParameters",additionalParametersmap);
                res.add(menu);
            }else{
               // menu.put("icon",m.getIcon());
                menu.put("menu",m);
                menu.put("icon-class",m.getImg());
                menu.put("type","item");
                menu.put("id",m.getMenuid());
                menu.put("text","<i class='menu-icon  "+m.getIcon()+" blue'></i>"+m.getMenuname());
                res.add(menu);
            }
        }
        return res;
    }
    
    
    public List<Object> treePathVo(String path){
        List<Object> res=new ArrayList<Object>();
        
        List<FileDirectory> treemenu=getPath(path);
        
        for(FileDirectory m:treemenu){
            Map<String,Object> menu=new HashMap<String,Object>();
            if("folder".equals(m.getType())){//
                //System.out.println("查询"+count+"级菜单");
                String id=m.getUrl();
                menu.put("icon-class","pink");
                menu.put("type","folder");
                menu.put("text",""+m.getText());
                Map<String,Object> additionalParametersmap=new HashMap<String,Object>();
                additionalParametersmap.put("id",id);
                additionalParametersmap.put("children",null);
                additionalParametersmap.put("item-selected",false);
                menu.put("additionalParameters",additionalParametersmap);
                res.add(menu);
            }else{
                menu.put("icon-class","pink");
                menu.put("type","item");
                Map<String,Object> additionalParametersmap=new HashMap<String,Object>();
                additionalParametersmap.put("children",null);
                additionalParametersmap.put("item-selected",false);
                menu.put("additionalParameters",additionalParametersmap);
                additionalParametersmap.put("id",m.getUrl());
                menu.put("text","<i class='ace-icon "+icon(m.getPrefix())+" grey'></i>"+m.getText());
                res.add(menu);
            }
        }
        return res;
    }
    
    /**
     * 
     * @方法名: getPath
     * @功能描述: 获取路径下的文件及文件夹
     * @参数：@param
     * @返回：@return
     * @创建人: Evan
     * @创建时间： Mar 22, 2017 3:06:17 PM
     */
    public List<FileDirectory> getPath(String path){
        List<FileDirectory> paths=new ArrayList<FileDirectory>();
        
        String basepath=MenuService.class.getClassLoader().getResource("").getPath().toString().replaceAll("classes/", "jsp");
        if(path==null){
            path=basepath; 
        }
        File file=new File(path);
        File[] tempList = file.listFiles();
        FileDirectory fdc=new FileDirectory();
        for (int i = 0; i < tempList.length; i++) {
            File fd=tempList[i];
            fdc=new FileDirectory(); 
            if (tempList[i].isFile()) {
                fdc.setType("item");
                fdc.setText(fd.getName());//获取文件名
                String prefix=fd.getName().substring(fd.getName().lastIndexOf(".")+1);
                fdc.setPrefix(prefix);
                String path1=fd.getPath().replaceAll("\\\\","/");
                String path2=basepath.replaceFirst("/","");
                String p3=path1.replaceAll(path2,"").replaceAll("."+prefix, "");
                fdc.setUrl(p3);//路径
                
            }
            if (tempList[i].isDirectory()) {
                fdc.setType("folder");
                fdc.setText(fd.getName());//获取文件名
                fdc.setUrl(fd.getPath());//路径
            }
            paths.add(fdc);
            
        }
        return paths;
    }
    
    private String icon(String prefix){
        String icon="fa fa-file";
        if("zip".equals(prefix)){
            icon="fa fa-zip-o";
        }else if("jsp".equals(prefix)){
            icon="fa fa-file";
        }else if("text".equals(prefix)){
            icon="fa fa-text";
        }else if("class".equals(prefix)||"java".equals(prefix)){
            icon="fa fa-code";
        }else if("word".equals(prefix)){
            icon="fa fa-word-o";
        }else if("png".equals(prefix)||"jpg".equals(prefix)||"gif".equals(prefix)){
            icon="fa fa-photo-o";
        }
        return icon;
    }
    
    class FileDirectory{
        private String type;
        private String text;
        private String prefix;
        private String url;
        public String getType() {
            return type;
        }
        public void setType(String type) {
            this.type = type;
        }
        public String getText() {
            return text;
        }
        public void setText(String text) {
            this.text = text;
        }
        public String getPrefix() {
            return prefix;
        }
        public void setPrefix(String prefix) {
            this.prefix = prefix;
        }
        public String getUrl() {
            return url;
        }
        public void setUrl(String url) {
            this.url = url;
        }
    }
    
    
    public boolean SortTree(JSONArray  list,List<Menu> menus,String pid){
        
        Menu sort=new Menu();
        for(int i=0;i<list.size();i++){
            sort=new Menu();
            JSONObject  obj=list.getJSONObject(i);
            String id=obj.getString("id");
            JSONArray  children=obj.getJSONArray("children");
            sort.setMenuid(id);
            sort.setOrderid(i);
            sort.setPid(pid);
            if(children==null){//菜单
                sort.setIsmenu(1);
            }else if(children.size()>0){
                sort.setIsmenu(0);
                SortTree(children,menus,id);
            }else{//下面没有菜单的，也为菜单
                sort.setIsmenu(1);
            }
            menus.add(sort); 
        }
       
        
        return true;
    }
    
    public boolean SortMenu(List<Menu> menus){
        
        try {
            return MyBatisMenuListDao.edit("MenuMapper.updateByMenuidSort", menus);
        } catch (Exception e) {
            loggerError.error(e.getMessage());
        }
        return false;
    }
 
    
}
