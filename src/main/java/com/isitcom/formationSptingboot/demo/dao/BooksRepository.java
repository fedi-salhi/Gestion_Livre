package com.isitcom.formationSptingboot.demo.dao;

import java.util.List;

import com.isitcom.formationSptingboot.demo.entities.Books;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface BooksRepository extends JpaRepository<Books,Long>{

	public List<Books> findByNomContains(String mc);
@Query("select p from Books p where p.nom like %:x%")
	public List<Books> rechercherMC(@Param("x") String mc);
}
