package com.klef.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.klef.ep.models.Admin;
import com.klef.ep.models.User;

@Remote
public interface AdminService 
{
   public Admin CheckAdminLogin(String username,String password);
   public String AddUser(User user);
   public String deleteUser(int id);
   public List<User> ViewAllUsers();
   
}