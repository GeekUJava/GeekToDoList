package GeekToDoList.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppController {

    @RequestMapping("/")
    public String javaPageHello(Model model){
        model.addAttribute("name","Barsik");
        return "hello";
    }

}
