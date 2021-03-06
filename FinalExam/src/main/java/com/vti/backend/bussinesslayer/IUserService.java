package com.vti.backend.bussinesslayer;

import java.sql.SQLException;
import java.util.List;

import com.vti.entity.User;

public interface IUserService {
	List<User> getListUsers() throws SQLException, ClassNotFoundException;

	User getUserById(int id) throws SQLException, ClassNotFoundException;

	int deleteUser(int id) throws ClassNotFoundException, SQLException;

	boolean isUserIdExits(int id) throws SQLException, ClassNotFoundException;
	boolean isProjectIdExits(int id) throws SQLException, ClassNotFoundException;

	User login(String email, String password) throws Exception;
	
	List<User> getProjectInfo(int projectID) throws SQLException, ClassNotFoundException;
	List<User> getProjectManager() throws SQLException, ClassNotFoundException;
}
