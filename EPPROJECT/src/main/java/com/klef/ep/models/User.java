package com.klef.ep.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="user_table")
public class User implements Serializable
{
	 /**
	   * 
	   */
	  private static final long serialVersionUID = 1L;
	   @Id  // primary key
	   @GeneratedValue(strategy = GenerationType.IDENTITY)  // auto_increment
	    private int id;
	  @Column(length = 20,nullable = false)
	    private String name;
	  @Column(length = 10,nullable = false)
	    private String gender;
	  @Column(length = 20,nullable = false)
	    private String nationality;
	  @Column(length = 20,nullable = false)
	    private String doj;
	  @Column(length = 30,nullable = false,unique = true)
	    private String email;
	  @Column(length = 30,nullable = false)
	    private String password;
	  @Column(length = 30,nullable = false,unique = true)
	    private String contactno;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getDoj() {
		return doj;
	}
	public void setDoj(String doj) {
		this.doj = doj;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
