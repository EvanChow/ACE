package com.avalon.vo.im;

public class MineTo {
    
    private Mine mine;
    private To to;
    
    public MineTo(){
        this.mine=new Mine();
        this.to=new To();
    }
    
    public Mine getMine() {
        return mine;
    }

    public void setMine(Mine mine) {
        this.mine = mine;
    }

    public To getTo() {
        return to;
    }

    public void setTo(To to) {
        this.to = to;
    }

    public class Mine{
        private String avatar;
        private String content;
        private String id;
        private boolean mine;
        private String username;
        public String getAvatar() {
            return avatar;
        }
        public void setAvatar(String avatar) {
            this.avatar = avatar;
        }
        public String getContent() {
            return content;
        }
        public void setContent(String content) {
            this.content = content;
        }
        public String getId() {
            return id;
        }
        public void setId(String id) {
            this.id = id;
        }
        public boolean isMine() {
            return mine;
        }
        public void setMine(boolean mine) {
            this.mine = mine;
        }
        public String getUsername() {
            return username;
        }
        public void setUsername(String username) {
            this.username = username;
        }
        
    }
    
    public class To{
        private String avatar;
        private String id;
        private String name;
        private String sign;
        private String type;
        private String username;
        public String getAvatar() {
            return avatar;
        }
        public void setAvatar(String avatar) {
            this.avatar = avatar;
        }
        public String getId() {
            return id;
        }
        public void setId(String id) {
            this.id = id;
        }
        public String getName() {
            return name;
        }
        public void setName(String name) {
            this.name = name;
        }
        public String getSign() {
            return sign;
        }
        public void setSign(String sign) {
            this.sign = sign;
        }
        public String getType() {
            return type;
        }
        public void setType(String type) {
            this.type = type;
        }
        public String getUsername() {
            return username;
        }
        public void setUsername(String username) {
            this.username = username;
        }
        
    }
    
}
