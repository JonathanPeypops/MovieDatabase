package be.vdab.service;

import be.vdab.domain.Actor;
import be.vdab.repository.ActorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import static org.springframework.http.HttpStatus.NOT_FOUND;
import static org.springframework.http.HttpStatus.OK;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

@RestController
public class ActorService {
    @Autowired
    private ActorRepository actorRepository;

    @RequestMapping(value = "/actor/{actorId}", method = RequestMethod.GET)
    public ResponseEntity<Actor> findById(@PathVariable("actorId") int id){
        Actor actor = actorRepository.findOne(id);
        if(actor == null) {
            return new ResponseEntity<>(NOT_FOUND);
        } else {
            return new ResponseEntity<>(actor, OK);
        }
    }
    @RequestMapping(value = "/actors", method = GET)
    public List<Actor> findAll() {
        return actorRepository.findAll();
    }
}
