package be.vdab.service;

import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FilmService {
    @Autowired
    private FilmRepository filmRepository;
}
