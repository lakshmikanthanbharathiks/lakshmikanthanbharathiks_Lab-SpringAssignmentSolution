package com.greatlearning.StudentManagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.greatlearning.StudentManagement.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	public User findByUsername(String username);

}
