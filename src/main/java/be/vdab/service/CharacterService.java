package be.vdab.service;

import be.vdab.domain.*;
import be.vdab.domain.Character;
import be.vdab.repository.ActorRepository;
import be.vdab.repository.CharacterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

public class CharacterService {
    @Autowired
    private CharacterRepository characterRepository;

    @Autowired
    private ActorRepository actorRepository;

    @RequestMapping(value = "/characters", method = GET, produces = "application/json")
    public List<Character> findAll() {
        return characterRepository.findAll();
    }
}
