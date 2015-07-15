package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.domain.Gender;
import be.vdab.repository.ActorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class ActorController {
    @Autowired
    private ActorRepository actorRepository;

    @RequestMapping("actors/details")
    public String actors(Map<String, Object> model, @RequestParam("id") int actorId) {
        model.put("actor", actorRepository.findOne(actorId));
        return "detailsactor";
    }

    @RequestMapping("actors/form")
    public String formActor(Map<String, Object> model, @RequestParam(value = "id", required = false) Integer actorId) {
        if (actorId == null) {
            model.put("actor", new Actor());
        } else {
            model.put("actor", actorRepository.findOne(actorId));
        }
        return "formactor";
    }

    @RequestMapping(value = "/createactor", method = RequestMethod.POST)
    public String createActor(@Valid Actor actor) {
        actorRepository.save(actor);
        return "redirect:/actor";
    }

    @RequestMapping(value = "actor/delete/{actorId}", method = GET) //TODO: fix delete method
    public String removeActorById(@PathVariable("actorId") int id) {
        actorRepository.delete(id);
        return "redirect:/actor";
    }

    @RequestMapping("/actor")
    public String actors(Map<String, Object> model) {
        model.put("actors", actorRepository.findAll());
        return "actorhome";
    }

    @ModelAttribute(value = "genders")
    public List<Gender> genders(){
        List<Gender> genders = new ArrayList<>();
        for (Gender g: Gender.values()){
            genders.add(g);
        }
        return genders;
    }
}
