package com.marketing.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marketing.Repositories.BillingRepository;
import com.marketing.entities.Billing;

@Service
public class BillingServiceImpl implements BillingService {
@Autowired
private BillingRepository billingRepo;
	@Override
	public void generateBill(Billing bill) {
		billingRepo.save(bill);
	}
	@Override
	public List<Billing> getAllBill() {
     List<Billing> allBill = billingRepo.findAll();
		return allBill;
	}

}
