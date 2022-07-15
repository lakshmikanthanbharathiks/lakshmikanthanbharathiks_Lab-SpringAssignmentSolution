package com.greatlearning.StudentManagement.service;

import java.util.List;

import com.greatlearning.StudentManagement.entity.Student;

public interface StudentService {
	public List<Student> findAll();

	public Student findById(int id);

	public void save(Student student);

	public void deleteById(int id);

}
