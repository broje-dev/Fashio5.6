package com.marketing.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.marketing.entities.Billing;
import com.marketing.entities.Contacts;
import com.marketing.services.BillingService;
import com.marketing.services.ContactService;

@Controller
public class ContactController {
	@Autowired
private ContactService contactService;
	@Autowired
	private BillingService billingService;
	@RequestMapping("/listContacts")
	public String listContacts(Model model) {
		List<Contacts> contacts = contactService.getContacts();
		model.addAttribute("contacts" ,contacts);
		return "list_contacts";
	}
	@RequestMapping("/createBill")
	public String createBill(@RequestParam("id") long id, Model model) {
		Contacts contact = contactService.contactById(id);
		model.addAttribute("contact", contact);
		return "generate_bill";
		
		
	}
	@RequestMapping("/saveBill")
	public String saveBill(Billing bill, Model model) {//crate one entity same as generated_bill.jsp
		billingService.generateBill(bill);
		model.addAttribute("msg","your billing details is saved");
		return "generate_bill";
		
	}
}
