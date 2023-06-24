package com.gitaction.demo.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {
    @GetMapping("/")
    public String main(Model model){
        model.addAttribute("data" , "타임리프 엔진 예제입니다.");

        return "index";
    }

    @ResponseBody
    @GetMapping("/action1")
    public String action1(){
        return "action1";
    }
    //첫번째 시도는 실패입니당.

    @ResponseBody
    @GetMapping("/action2")
    public String action2(){
        return "action2";
    }
    //두번째 시도는 실패입니당.

    @ResponseBody
    @GetMapping("/action3")
    public String action3(){
        return "action3";
    }
    //세번째 시도는 실패입니당.
}
