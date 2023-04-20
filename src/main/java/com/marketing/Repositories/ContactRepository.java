package com.marketing.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.marketing.entities.Contacts;
import com.marketing.entities.Lead;

public interface ContactRepository extends JpaRepository<Contacts, Long> {

}
