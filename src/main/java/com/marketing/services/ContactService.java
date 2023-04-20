package com.marketing.services;

import java.util.List;

import com.marketing.entities.Contacts;

public interface ContactService {
public void saveContacts(Contacts contact);

public List<Contacts> getContacts();

public Contacts contactById(long id);
}
