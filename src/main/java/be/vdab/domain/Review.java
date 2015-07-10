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

    public String getReviewername() {
        return reviewername;
    }

    public void setReviewername(String reviewername) {
        this.reviewername = reviewername;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }
}
