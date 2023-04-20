package com.marketing.services;

import java.util.List;

import com.marketing.entities.Billing;

public interface BillingService {
public void generateBill(Billing bill);
public List<Billing> getAllBill();
}
