package com.kgc.Controller;

import com.kgc.pojo.QQ;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QQcontroller {
    @RequestMapping("register")
    public void register(QQ qqInfo){
        String nick = qqInfo.getNick();
    }
}
