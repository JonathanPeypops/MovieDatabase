package be.vdab.domain;

import javax.persistence.*;


@Entity
public class Film {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String title;
    private int filmlength;
//    private List<Character> characters;
    private String director;
//    private String summary;
//    private ByteArray coverimg;
    @Enumerated(EnumType.STRING)
    private Genre genre;
//    private double rating;
//    private URL trailer;

    public Film() {
    }

    public Film(String title, int filmlength, String director, Genre genre) {
        this.title = title;
        this.filmlength = filmlength;
        this.director = director;
        this.genre = genre;
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

//    public List<Character> getCharacters() {
//        return characters;
//    }
//
//    public void setCharacters(List<Character> characters) {
//        this.characters = characters;
//    }

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
//    public ByteArray getCoverimg() {
//        return coverimg;
//    }
//
//    public void setCoverimg(ByteArray coverimg) {
//        this.coverimg = coverimg;
//    }

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
//    public URL getTrailer() {
//        return trailer;
//    }
//
//    public void setTrailer(URL trailer) {
//        this.trailer = trailer;
//    }
}
