package be.vdab.domain;

import javassist.bytecode.ByteArray;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Actor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String firstname;
    private String lastname;

    private String bio;
//    private Date birthdate;
    @Enumerated(EnumType.STRING)
    private Gender gender;
    private String actorimg;

    public Actor() {
    }

    public Actor(String firstname, String lastname, Gender gender, String actorimg) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.gender = gender;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

//    public Date getBirthdate() {
//        return birthdate;
//    }
//
//    public void setBirthdate(Date birthdate) {
//        this.birthdate = birthdate;
//    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public String getActorimg() {
        return actorimg;
    }

    public void setActorimg(String actorimg) {
        this.actorimg = actorimg;
    }
}
