package com.marketing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.marketing.entities.Contacts;
import com.marketing.entities.Lead;
import com.marketing.services.ContactService;
import com.marketing.services.LeadService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class LeadController {
	@Autowired
	private LeadService leadService;
	@Autowired
	private ContactService contactService;
	// calling through url
	//http://localhost:8080/createLead
	@RequestMapping(value="/createLead",method=RequestMethod.GET)
	public String viewCreateLeadForm() {
		return "create_lead";
		
	}
	//calling through form
	@RequestMapping(value="/saveLead", method=RequestMethod.POST)
	public String saveLead(@ModelAttribute("lead") Lead lead, Model model) {
		leadService.saveOneLead(lead);
		model.addAttribute("lead", lead);
		
		return "lead_info";
	}
	//for coverting lead to contacts by id which is hidden
	@RequestMapping("/convertLead")
	public String convertLead(@RequestParam("id") long id, Model model) {
	//based on id u take lead from db	
	Lead lead=leadService.getLeadById( id);
		//convert lead to Contact
	Contacts contact= new Contacts();
	contact.setFirstName(lead.getFirstName());
	contact.setLastName(lead.getLastName());
	contact.setEmail(lead.getEmail());
	contact.setMobile(lead.getMobile());
	contact.setSource(lead.getSource());
	//now save the contact by creating Contactrepository 
	contactService.saveContacts(contact);
	//now delete the leads
	leadService.deleteLead(id);
	//when i click on convert it lead convert to contact and show all contact
	List<Contacts> contacts = contactService.getContacts();
	model.addAttribute("contacts", contacts);
		return"list_contacts";
	}
	@RequestMapping("/listLeads")
	public String listLeads(Model model) {
		List<Lead> leads = leadService.getAllLeads();
		model.addAttribute("leads", leads);
		return"lead_list";
	}
	@RequestMapping("/listInfo")
	public String leadInfo(@RequestParam("id") long id,Model model) {
		Lead leads = leadService.getLeadById(id);
		model.addAttribute("lead", leads);
		return "lead_info";
	}
}
