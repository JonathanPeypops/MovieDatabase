package be.vdab.controller;

import be.vdab.domain.Film;
import be.vdab.domain.Genre;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

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
    public String form(Map<String, Object> model, @RequestParam(value = "id", required = false) Integer filmId) {
        if (filmId == null) {
            model.put("film", new Film());
        } else {
            model.put("film", filmRepository.findOne(filmId));
        }
        return "form";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@Valid Film film) {
        filmRepository.save(film);
        return "redirect:/";
    }

    @RequestMapping(value = "film/delete/{filmId}", method = GET) //TODO: fix delete method
    public String removeById(@PathVariable("filmId") int id) {
        filmRepository.delete(id);
        return "redirect:/";
    }

    @ModelAttribute(value = "genres")
    public List<Genre> genres(){
        List<Genre> genres = new ArrayList<>();
        for (Genre g: Genre.values()){
            genres.add(g);
        }
        return genres;
    }
}
