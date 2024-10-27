package com.klef.ep.services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.User;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class UserServiceImpl  implements UserService{

	@Override
	public User UserLogin(String email, String pwd) {
     
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery("  select e from User e where email=? and password=?   "); // atmost one object (0 or 1)
	     qry.setParameter(1, email);
	     qry.setParameter(2, pwd);
	     
	     User us = null;
	     
	     if(qry.getResultList().size() > 0) 
	     {
	    	    us = (User) qry.getSingleResult();
	     }
	     
	     em.close();
	     emf.close();
	     return us;
	}


	@Override
	public String addUser(User us) 
	{
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	   	  EntityManager em = emf.createEntityManager();
	   	  
	   	  em.getTransaction().begin();
	   	  em.persist(us);     // insert operation
	   	  em.getTransaction().commit();
	   	  
	   	  em.close();
	   	  emf.close();
	   	  
	   	  return "Record Inserted Successfully";
	}

	@Override
	public String updateUser(User us) {
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
   	  EntityManager em = emf.createEntityManager();
   	  
   	  em.getTransaction().begin();
   	  User e= em.find(User.class, us.getId()); // fetching object based on ID
   	  e.setPassword(us.getPassword());
   	  e.setContactno(us.getContactno());
         em.getTransaction().commit();
   	  
   	  em.close();
   	  emf.close();
   	  
   	  return "Record Updated Successfully";
	}

}
