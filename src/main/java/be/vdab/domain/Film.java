package be.vdab.domain;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;


@Entity
public class Film {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String title;
    private int filmlength;
    @OneToMany
    @JoinColumn(name = "film_id")
    private List<Character> characters = new ArrayList<>();
    private String director;
//    private String summary;
    private String coverimg;
    @Enumerated(EnumType.STRING)
    private Genre genre;
//    private double rating;
    private String trailer;

    public Film() {
    }

    public Film(String title, int filmlength, String director, Genre genre, String trailer, String coverimg) {
        this.title = title;
        this.filmlength = filmlength;
        this.director = director;
        this.genre = genre;
        this.trailer = trailer;
        this.coverimg = coverimg;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getFilmlength() {
        return filmlength;
    }

    public void setFilmlength(int filmlength) {
        this.filmlength = filmlength;
    }

    public List<Character> getCharacters() {
        return characters;
    }

    public void setCharacters(List<Character> characters) {
        this.characters = characters;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

//    public String getSummary() {
//        return summary;
//    }
//
//    public void setSummary(String summary) {
//        this.summary = summary;
//    }
//
    public String getCoverimg() {
        return coverimg;
    }

    public void setCoverimg(String coverimg) {
        this.coverimg = coverimg;
    }

    public Genre getGenre() {
        return genre;
    }

    public void setGenre(Genre genre) {
        this.genre = genre;
    }

//    public double getRating() {
//        return rating;
//    }
//
//    public void setRating(double rating) {
//        this.rating = rating;
//    }
//
    public String getTrailer() {
        return trailer;
    }

    public void setTrailer(String trailer) {
        this.trailer = trailer;
    }
}
