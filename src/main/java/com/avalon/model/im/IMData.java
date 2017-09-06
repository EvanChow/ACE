package com.avalon.model.im;

import java.util.List;

public class IMData {
    private IMUser mine;
    private List<IMGroup> friend;
    private List<IMGroups> group;
    private List<IMUser> list;
    public IMUser getMine() {
        return mine;
    }
    public void setMine(IMUser mine) {
        this.mine = mine;
    }
    public List<IMGroup> getFriend() {
        return friend;
    }
    public void setFriend(List<IMGroup> friend) {
        this.friend = friend;
    }
    public List<IMGroups> getGroup() {
        return group;
    }
    public void setGroup(List<IMGroups> group) {
        this.group = group;
    }
    public List<IMUser> getList() {
        return list;
    }
    public void setList(List<IMUser> list) {
        this.list = list;
    }
    
    
}
