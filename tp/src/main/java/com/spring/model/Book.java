package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="Book")
public class Book 
{
@Id
@Column(name="isbn")
@GeneratedValue(strategy=GenerationType.AUTO)
private int isbn;
@NotEmpty(message="Title is mandatory")
private String title;
@NotEmpty(message="Publisher is mandatory")
private String publisher;
@Min(value=100,message="Minimum value should be greater than 100")
private double price;	

private String author;
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
@ManyToOne
@JoinColumn(name="cid")
private Category category;

public  void setCategory(Category category) {
	this.category = category;
}
public int getIsbn() {
	return isbn;
}
public void setIsbn(int isbn) {
	this.isbn = isbn;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getPublisher() {
	return publisher;
}

public Category getCategory() {
	return category;
}
public void setPublisher(String publisher) {
	this.publisher = publisher;
}
public double getPrice() {
	return price; 
}
public void setPrice(double price) {
	this.price = price;
}


}
