package com.vti.entity;

import java.util.ArrayList;
import java.util.List;

public class Project  {
	private int projectId;
	private int teamSize;
	private User Manager;
	private List<User> idEmployees = new ArrayList<User>();
	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public User getManager() {
		return Manager;
	}
	public void setManager(User Manager) {
		this.Manager = Manager;
	}
	public List<User> getIdEmployees() {
		return idEmployees;
	}
	public void setIdEmployees(List<User> idEmployees) {
		this.idEmployees = idEmployees;
	}
	public int getTeamSize() {
		return teamSize;
	}
	public void setTeamSize() {
		this.teamSize = this.idEmployees.size() + 1;
	}
	
	public Project(int id, User manager) {
		this.projectId = id;
		this.Manager = manager;
	}
	public int getIdManager() {
		return this.Manager.getId();
	}
	
	
	
}
