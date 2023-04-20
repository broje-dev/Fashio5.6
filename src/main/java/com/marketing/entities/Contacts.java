package com.marketing.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="contacts")
public class Contacts extends AbstractClass {//* interview inhertance id is reusuable here
	@Column(name="first_name",nullable=false)
private String firstName;
	@Column(name="last_name",nullable=false)
private String lastName;
	@Column(name="email",nullable=false,unique=true)
private String email;
	@Column(name="mobile",nullable=false,unique=true)
private String mobile;
private String source;//like advertisement
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public String getSource() {
	return source;
}
public void setSource(String source) {
	this.source = source;
}

}
