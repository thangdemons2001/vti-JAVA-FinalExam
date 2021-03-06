package com.vti.backend.bussinesslayer;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.vti.backend.datalayer.IUserRepository;
import com.vti.backend.datalayer.UserRepository;
import com.vti.entity.User;

public class UserService implements IUserService {

	private IUserRepository userRepository;

	public UserService() throws FileNotFoundException, ClassNotFoundException, IOException, SQLException {
		userRepository = new UserRepository();
	}

	@Override
	public List<User> getListUsers() throws SQLException, ClassNotFoundException {
		return userRepository.getListUsers();
	}

	@Override
	public User getUserById(int id) throws SQLException, ClassNotFoundException {
		return userRepository.getUserById(id);
	}

	@Override
	public int deleteUser(int id) throws ClassNotFoundException, SQLException {
		return userRepository.deleteUser(id);
	}

	@Override
	public boolean isUserIdExits(int id) throws SQLException, ClassNotFoundException {
		return userRepository.isUserIdExits(id);
	}
	@Override
	public boolean isProjectIdExits(int id) throws SQLException, ClassNotFoundException {
		return userRepository.isProjectIdExits(id);
	}

	@Override
	public User login(String email, String password) throws Exception {
		return userRepository.login(email, password);
	}
	@Override
	public List<User> getProjectInfo(int projectID) throws SQLException, ClassNotFoundException {
		
		return userRepository.getProjectInfo(projectID);
	}

	@Override
	public List<User> getProjectManager() throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		return userRepository.getProjectManager();
	}
}
