package GeekToDoList.controller;

import GeekToDoList.model.CreateTable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppController {

    @Autowired
    private CreateTable createTable;

    @RequestMapping("/")
    public String javaPageHello(Model model){
        model.addAttribute("name","Barsik");
        return "hello";
    }

    @RequestMapping("/create")
    public String createTable(Model model) {
        model.addAttribute("status", createTable.createStatus());
        // hello.jsp
        return "table";
    }


}
