

package com.klef.ep.services;

import javax.ejb.Remote;

import com.klef.ep.models.User;


@Remote
public interface UserService 
{
  public User UserLogin(String email,String pwd);
  public String addUser(User us);
	public String updateUser(User us);
}