package org.school.student.monitor.dao;

import java.util.List;

import org.school.student.monitor.model.Student;

public interface StudentDAO {
	
	   public void createStudent(Student student); 	
	   public List<Student> getAllStudents();
	   public Student getStudent(int studentId);
	   public void updateStudent(Student student);
	   public void deleteStudent(int studentId);	

}
