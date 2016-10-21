package org.school.student.monitor.dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.school.student.monitor.model.Student;
import org.school.student.monitor.utils.JdbcTemplateFactory;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDAOImpl implements StudentDAO{
	JdbcTemplate jdbcTemplateObject=null;
	
	static final String  SQL_CREATE_STUDENT	=	"INSERT INTO student (firstname,lastname,dob,address,city,province,fathername,mothername) values(?,?,?,?,?,?,?,?)";
	static final String  SQL_DELETE_STUDENT	=	"DELETE FROM student WHERE studentid=?";
	
	@Override
	public List<Student> getAllStudents() {
		// TODO Auto-generated method stub
		
		List<Student> stdList  = JdbcTemplateFactory.getjdbcTemplate().query("SELECT * FROM student",new BeanPropertyRowMapper(Student.class));
		
		return stdList;
	}

	@Override
	public Student getStudent(int studentid) {
		// TODO Auto-generated method stub
		
		Student student = (Student)JdbcTemplateFactory.getjdbcTemplate().queryForObject("SELECT * FROM student  where studentid = ?", new Object[] { studentid },new BeanPropertyRowMapper(Student.class));
		
		return student;
	}

	@Override
	public void updateStudent(Student student) {
		// TODO Auto-generated method stub
		
		JdbcTemplateFactory.getjdbcTemplate().update("UPDATE student SET firstname=? , lastname=?  where studentid = ?", student.getFirstname(),student.getLastname(), student.getStudentid());
		
	}

	@Override
	public void deleteStudent(int studentid) {
		// TODO Auto-generated method stub
		JdbcTemplateFactory.getjdbcTemplate().update(SQL_DELETE_STUDENT,studentid);
	}

	@Override
	public void createStudent(Student student) {

		// TODO Auto-generated method stub
		Date dateOfBirth=null;
		try{
		String start_dt = "10/16/2016";
		DateFormat formatter = new SimpleDateFormat("MM/dd/yyyy"); 
		dateOfBirth = (Date)formatter.parse(start_dt);
		SimpleDateFormat newFormat = new SimpleDateFormat("yyyyMMdd");
		String finalString = newFormat.format(dateOfBirth);
		
		}catch(Exception e){
			System.out.println("Error "+e.getMessage());
		}
		JdbcTemplateFactory.getjdbcTemplate().update(SQL_CREATE_STUDENT,student.getFirstname(),
																		student.getLastname(),
																		dateOfBirth,
																		student.getAddress(),
																		student.getCity(),
																		student.getProvince(),
																		student.getFathername(),
																		student.getMothername());
		
	}	
	
}
