package be.vdab.controller;

import be.vdab.domain.Film;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FilmController {
    @Autowired
    private FilmRepository filmRepository;

    @RequestMapping(value = "film.html", method = RequestMethod.GET)
    public Film film(@RequestParam("id") int id) {
        return filmRepository.findOne(id);
    }
}
