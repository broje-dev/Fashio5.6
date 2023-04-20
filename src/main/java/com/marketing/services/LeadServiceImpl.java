package com.marketing.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marketing.Repositories.LeadRepository;
import com.marketing.entities.Lead;

@Service
public class LeadServiceImpl implements LeadService {
	@Autowired
private LeadRepository leadrepo;
	@Override
	public void saveOneLead(Lead lead) {
		leadrepo.save(lead);
	}
	//geting from db
	@Override
	public Lead getLeadById(long id) {
		Optional<Lead> findById = leadrepo.findById(id);
		Lead lead = findById.get();
		return lead;
	}
	@Override
	public void deleteLead(long id) {
    leadrepo.deleteById(id);		
	}
	@Override
	public List<Lead> getAllLeads() {
		List<Lead> lead = leadrepo.findAll();	
		return lead;
	}

}
