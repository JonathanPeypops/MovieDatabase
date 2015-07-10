package be.vdab.domain;

import com.sun.tools.javac.util.List;
import javassist.bytecode.ByteArray;

import javax.persistence.*;
import java.net.URL;


@Entity
public class Film {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String title;
    private int length;
    private List<Character> characters;
    private Director director;
    private String summary;
    private ByteArray coverimg;
    private Genre genre;
    private double rating;
    private URL trailer;
}
