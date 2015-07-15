package be.vdab.domain;

import javassist.bytecode.ByteArray;

import javax.persistence.*;

@Entity
@Table(name = "film_character")
public class Character {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    @ManyToOne
    private Actor actor;
//    private ByteArray charimg;

    public Character() {
    }

    public Character(String name /** ,Actor actor*/) {
        this.name = name;
//        this.actor = actor;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Actor getActor() {
        return actor;
    }

//    public void setActor(Actor actor) {
//        this.actor = actor;
//    }
//
//    public ByteArray getCharimg() {
//        return charimg;
//    }
//
//    public void setCharimg(ByteArray charimg) {
//        this.charimg = charimg;
//    }
}
