package com.tourism.model;

public class Festival {
    private int id;
    private String festivalName;
    private String month;
    private String state;
    private String description;
    private int price;
    private String imageUrl;

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getFestivalName() { return festivalName; }
    public void setFestivalName(String festivalName) { this.festivalName = festivalName; }

    public String getMonth() { return month; }
    public void setMonth(String month) { this.month = month; }

    public String getState() { return state; }
    public void setState(String state) { this.state = state; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public int getPrice() { return price; }
    public void setPrice(int price) { this.price = price; }

    public String getImageUrl() { return imageUrl; }
    public void setImageUrl(String imageUrl) { this.imageUrl = imageUrl; }
}
