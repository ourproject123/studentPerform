package org.school.student.monitor.service;
 
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import org.school.student.monitor.dao.StudentDAO;
import org.school.student.monitor.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
 
@Service("studentService")
@Transactional
public class StudentServiceImpl implements  StudentService{
	
    @Autowired
    StudentDAO dao;	
     
    private static final AtomicLong counter = new AtomicLong();

	@Override
	public Student findById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Student findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveStudent(Student student) {
		
		dao.createStudent(student);
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateStudent(Student student) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletestudentById(long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Student> findAllStudents() {
		// TODO Auto-generated method stub
		return dao.getAllStudents();
	}

	@Override
	public void deleteAllStudent() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isstudentExist(Student student) {
		// TODO Auto-generated method stub
		return false;
	}
     
 
 
}
