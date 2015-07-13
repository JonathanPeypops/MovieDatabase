package be.vdab.controller;

import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class HomeController {
    @Autowired
    private FilmRepository filmRepository;

    @RequestMapping("/")
    public String films(Map<String, Object> model) {
        model.put("films", filmRepository.findAll());
        return "home";
    }
}
