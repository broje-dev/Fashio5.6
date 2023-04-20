package com.marketing.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.marketing.entities.Billing;
import com.marketing.services.BillingService;


@Controller
public class BillingController {
	@Autowired 
	private BillingService billserv;
	@RequestMapping("/allBill")
public String getBill(Model model) {
		List<Billing> allBill = billserv.getAllBill();
	model.addAttribute("bill", allBill);
	return "list_billing2";
}
	
}
