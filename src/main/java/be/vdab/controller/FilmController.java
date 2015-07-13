package be.vdab.controller;

import be.vdab.domain.Film;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.Map;

@Controller
public class FilmController {
    @Autowired
    private FilmRepository filmRepository;

    @RequestMapping("films/details")
    public String films(Map<String, Object> model, @RequestParam("id") int filmId) {
        model.put("film", filmRepository.findOne(filmId));
        return "details";
    }

    @RequestMapping("films/form")
    public String form(Map<String, Object> model) {
        model.put("film", new Film());
        return "form";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@Valid Film film) {
        filmRepository.save(film);
        return "redirect:/";
    }
}
