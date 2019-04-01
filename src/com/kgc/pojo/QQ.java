package com.kgc.pojo;

import javax.validation.constraints.Pattern;

public class QQ {
    @Pattern(regexp = ".{3,12}",message = "昵称为3-12位任意字符")
    private String nick;
    @Pattern(regexp = "\\w{6,20}",message = "密码为5-20位数字，字母或下划线")
    private String password;
    @Pattern(regexp = "1[356789]\\d{9}",message = "手机号格式错误")
    private String phone;
    private String email;
    private Integer age;

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;

    }

    @Override
    public String toString() {
        return "QQ{" +
                "nick='" + nick + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", age=" + age +
                '}';
    }
}
