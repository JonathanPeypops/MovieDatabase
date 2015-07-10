package be.vdab.service;

import be.vdab.domain.Film;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import static org.springframework.http.HttpStatus.NOT_FOUND;
import static org.springframework.http.HttpStatus.OK;
import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;
import static org.springframework.web.bind.annotation.RequestMethod.DELETE;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@RestController
public class FilmService {
    @Autowired
    private FilmRepository filmRepository;

    @RequestMapping(value = "create/film", method = POST, consumes = APPLICATION_JSON_VALUE)
    public ResponseEntity<Void> create(@RequestBody Film film) {
        filmRepository.save(film);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Location", "http://localhost:8080/film/" + film.getId());
        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
    }

    @RequestMapping(value = "film/{filmId}", method = DELETE)
    public void removeById(@PathVariable("filmId") int id) {
        filmRepository.delete(id);
    }

    @RequestMapping(value = "film/{filmId}", method = GET)
    public ResponseEntity<Film> findById(@PathVariable("filmId") int id) {
        Film film = filmRepository.findOne(id);
        if(film == null) {
            return new ResponseEntity<>(NOT_FOUND);
        } else {
            return new ResponseEntity<>(film, OK);
        }
    }

    @RequestMapping("films")
    public List<Film> findAll() {
        return filmRepository.findAll();
    }
}
