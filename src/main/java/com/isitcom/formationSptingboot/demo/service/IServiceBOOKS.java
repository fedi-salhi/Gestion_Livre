package com.isitcom.formationSptingboot.demo.service;

import java.util.List;

import com.isitcom.formationSptingboot.demo.entities.Books;


public interface IServiceBOOKS {
	
	public void addProduct(Books p);
	public void deleteProduct(Long id);
	public void updateProduct(Books p);
	public Books getProduct(Long id);
	public List<Books>getAllProducts();
	public List<Books> getProductsBMC(String mc);
	

}
