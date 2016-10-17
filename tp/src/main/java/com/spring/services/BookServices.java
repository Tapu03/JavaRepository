package com.spring.services;

import java.util.List;
import com.spring.model.Book;

public interface BookServices 
{
List<Book> getAllBooks();
Book getBooksByIsbn(int isbn);
void deleteBook(int isbn);
void addBook(Book book);
void editBook(Book book);
}
