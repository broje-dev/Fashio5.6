package com.marketing.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marketing.Repositories.ContactRepository;
import com.marketing.entities.Contacts;

@Service
public class ContactServiceImpl implements ContactService {
	@Autowired
private ContactRepository contactrepo;
	@Override
	public void saveContacts(Contacts contact) {
		contactrepo.save(contact);
	}
	@Override
	public List<Contacts> getContacts() {
		List<Contacts> contacts = contactrepo.findAll();
		return contacts;
	}
	@Override
	public Contacts contactById(long id) {
		Optional<Contacts> findById = contactrepo.findById(id);
		Contacts contacts = findById.get();
		return contacts;
	}

}
