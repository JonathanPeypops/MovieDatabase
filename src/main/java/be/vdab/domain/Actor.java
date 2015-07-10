package be.vdab.domain;

import javassist.bytecode.ByteArray;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

import javax.persistence.Entity;

@Entity
public class Actor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String firstname;
    private String lastname;

    private String bio;
    private Date birthdate;
    private Gender gender;
    private ByteArray actorimg;

    public Actor() {
    }

    public Actor(String firstname, String lastname, Gender gender) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.gender = gender;
    }
}
