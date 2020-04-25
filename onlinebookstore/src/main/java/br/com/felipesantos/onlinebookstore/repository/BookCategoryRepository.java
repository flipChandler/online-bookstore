package br.com.felipesantos.onlinebookstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.felipesantos.onlinebookstore.entity.BookCategory;

public interface BookCategoryRepository extends JpaRepository<BookCategory, Long>{

}
