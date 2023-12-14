package com.isitcom.formationSptingboot.demo.controlleur;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.isitcom.formationSptingboot.demo.service.IServiceCategorie;

@Controller
public class CategorieControleur {
	@Autowired
	private IServiceCategorie sc;

		
}

