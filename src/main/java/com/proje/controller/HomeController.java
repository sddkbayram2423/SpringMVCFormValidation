package com.proje.controller;



import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.proje.model.Kullanici;

@Controller
public class HomeController {
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getKullanici(@ModelAttribute("kullanici") Kullanici kullanici) {
		kullanici=new Kullanici();
		return new ModelAndView("validationForm", "kullanici", kullanici);
	}
	@RequestMapping(value = "/show",method = RequestMethod.POST)
	public ModelAndView showKullanici(@ModelAttribute("kullanici") @Valid Kullanici kullanici,BindingResult results) {
		
		if(results.hasErrors()) {
			kullanici=new Kullanici();
			return new ModelAndView("validationForm", "kullanici", kullanici);
		}
		return new ModelAndView("denetlemeBasariliForm", "kullanici", kullanici);
	}

}
