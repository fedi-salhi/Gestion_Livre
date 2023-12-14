package com.isitcom.formationSptingboot.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.isitcom.formationSptingboot.demo.dao.BooksRepository;
import com.isitcom.formationSptingboot.demo.entities.Books;
@Service
public class ServiceBOOKS implements IServiceBOOKS {
	@Autowired
	private BooksRepository pr;
	@Override
	public void addProduct(Books p) {
		pr.save(p);		
	}

	@Override
	public void deleteProduct(Long id) {
		pr.deleteById(id);
		
	}

	@Override
	public void updateProduct(Books p) {
		pr.save(p);
		
	}

	@Override
	public Books getProduct(Long id) {
		return pr.findById(id).get();
	}

	@Override
	public List<Books> getAllProducts() {
		return pr.findAll();
	}

	@Override
	public List<Books> getProductsBMC(String mc) {
		return pr.findByNomContains(mc);
	}

}
