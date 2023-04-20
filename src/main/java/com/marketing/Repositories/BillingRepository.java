package com.marketing.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.marketing.entities.Billing;

public interface BillingRepository extends JpaRepository<Billing, Long> {

}
