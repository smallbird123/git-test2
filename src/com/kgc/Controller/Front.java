package com.kgc.Controller;

import com.kgc.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
public class Front {

    @RequestMapping(value = "/qqRegister.do" ,method = RequestMethod.POST)
    public @ResponseBody void qqRegister(@RequestParam Map<String,Object> qqInfo,User user ){
        System.out.println("qq注册"+qqInfo);

    }
    @RequestMapping("/showData.do")
    @ResponseBody
    public String showData(Model model){
        model.addAttribute("username","王二麻子");
        model.addAttribute("password","345");
        model.addAttribute("age",13);
        model.addAttribute("gender","男");
        model.addAttribute("weight",1.86);

        return "/jsp/login.jsp";
    }

}
