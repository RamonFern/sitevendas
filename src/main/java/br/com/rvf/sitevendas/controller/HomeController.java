package br.com.rvf.sitevendas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index(){
		System.out.println("Enntrando no projeto SITE...");
		return "home";
	}
}
