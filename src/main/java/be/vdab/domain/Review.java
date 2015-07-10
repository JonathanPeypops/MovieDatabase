package be.vdab.domain;

import javax.persistence.Entity;

@Entity
public class Review {
    private String reviewername;
    private String description;
    private double rating;

    public Review() {
    }

    public Review(String reviewername, String description) {
        this.reviewername = reviewername;
        this.description = description;
    }
}
