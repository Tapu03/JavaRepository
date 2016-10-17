package com.spring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.BookDao;
import com.spring.model.Book;


@Service
public class BookServicesImpl implements BookServices {
	@Autowired
private BookDao bookDao;

	public BookDao getBookDao() {
	return bookDao;
}

public void setBookDao(BookDao bookDao) {
	this.bookDao = bookDao;
}
@Transactional
	public List<Book> getAllBooks() {
		return bookDao.getAllBooks();
	}

public void deleteBook(int isbn){
	bookDao.deleteBook(isbn);
}

public Book getBooksByIsbn(int isbn) {
	return bookDao.getBooksByIsbn(isbn);
	}
public void editBook(Book book) {
	bookDao.editBook(book);
	
}

@Override
public void addBook(Book book) {
	bookDao.addBook(book);
	
}


}
