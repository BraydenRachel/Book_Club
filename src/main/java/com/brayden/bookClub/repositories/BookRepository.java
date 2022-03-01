package com.brayden.bookClub.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.brayden.bookClub.models.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Long>{


}
