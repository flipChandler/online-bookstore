package br.com.felipesantos.onlinebookstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.felipesantos.onlinebookstore.entity.Book;

public interface BookRepository extends JpaRepository<Book, Long>{

}
