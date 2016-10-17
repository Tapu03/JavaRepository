package com.spring.mvc;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Book;
import com.spring.model.Category;
import com.spring.services.BookServices;
@Controller
public class BookController {
	@Autowired
private BookServices bookServices;

public BookServices getBookServices() {
	return bookServices;
}

public void setBookServices(BookServices bookServices) {
	this.bookServices = bookServices;
}
@RequestMapping("/")
public String MyIndexPage()
{
	return "index";
}

@RequestMapping("/getAllBooks")
public ModelAndView getAllProducts()
{
	List<Book> books = bookServices.getAllBooks();
	
	return new ModelAndView("bookList","books",books);
}

@RequestMapping("getBooksByIsbn/{isbn}")
public ModelAndView getBooksByIsbn(@PathVariable(value="isbn") int isbn)
{	
	System.out.println(isbn);
	Book b= bookServices.getBooksByIsbn(isbn);
	return new ModelAndView("bookPage","b",b);
	
}
@RequestMapping("admin/delete/{isbn}")
public String deleteBook(@PathVariable(value="isbn") int isbn)
{
	bookServices.deleteBook(isbn);
	return "redirect:/getAllBooks";
}
@RequestMapping(value="addBook",method=RequestMethod.GET)
public String getBookForm(Model model)
{
	System.out.println("inside add/book/addBook");
	Book book=new Book();
	Category category=new Category();
	category.setCid(1);
	book.setCategory(category);
	model.addAttribute("bookForm",book);
	return "bookForm";
}
@RequestMapping(value="insertBook",method=RequestMethod.POST)
public String addBook( @Valid @ModelAttribute(value="bookFormObj")  Book book,BindingResult result)
{
	System.out.println("inside insert book");
	if(result.hasErrors())
		return "bookForm";
	bookServices.addBook(book);
	return "redirect:/getAllBooks";
}

@RequestMapping("/admin/book/editBook/{isbn}")
public ModelAndView getEditForm(@PathVariable(value="isbn")  int isbn){
	Book book=this.bookServices.getBooksByIsbn(isbn);
	return new ModelAndView("editBookForm","editBookObj",book);
}
@RequestMapping(value="/admin/book/editBook",method=RequestMethod.POST)
public String editBook(@ModelAttribute(value="editBookObj") Book book)
{
bookServices.editBook(book);

return "redirect:/getAllBooks";

}

}
