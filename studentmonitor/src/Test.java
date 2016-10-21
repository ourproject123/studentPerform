import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.school.student.monitor.dao.StudentDAOImpl;
import org.school.student.monitor.model.Student;
import org.school.student.monitor.utils.JdbcTemplateFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//Test test = new Test();
		//test.testConn2();
		
		StudentDAOImpl std = new StudentDAOImpl();
		List<Student> stdList = std.getAllStudents();
		
		for (Student student : stdList) {
			System.out.println(":::: "+student.getStudentid()+" /"+student.getDob());
		}
		
		Student student = new Student();
		student.setStudentid(2);
		student.setFirstname("Glen");
		student.setLastname("Rolando");
		
		std.updateStudent(student);
		
		student = std.getStudent(2);
		
		System.out.println("---------------------- ::: "+student.getFirstname()+" / "+student.getLastname());
		
		student.setFirstname("David");
		student.setLastname("wood");
		
		//std.createStudent(student);
		
		std.deleteStudent(5);
	}

	private void testConn1(){
		
		try {
		    Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/studentmonitor?" +"user=stdadmin&password=1qaz2wsx");
		    System.out.println("Connection  : "+conn);
		    
		    Statement stmt = (Statement) conn.createStatement();
		    ResultSet rs = stmt.executeQuery("select * from student");
		    
		    while(rs.next()) {
		        // ... get column values from this record
		    	System.out.println("--------------- "+rs.getString("firstname"));
		    }
		    

		} catch (SQLException ex) {
		    // handle any errors
		    System.out.println("SQLException: " + ex.getMessage());
		    System.out.println("SQLState: " + ex.getSQLState());
		    System.out.println("VendorError: " + ex.getErrorCode());
		}
		
	}
	
	private void testConn2(){
		
		try{
		
			System.out.println("---------------- step 1");
			
			JdbcTemplate jdbcTemplateObject=null;
			
			// Create a new application context. this processes the Spring config
			ApplicationContext ctx =  new ClassPathXmlApplicationContext("SpringConfigurations.xml");
			
			System.out.println("---------------- step 2 ctx : "+ctx);
			//jdbcTemplateObject = new JdbcTemplate((DataSource) ctx.getBean("springDataSource"));
			jdbcTemplateObject = JdbcTemplateFactory.getjdbcTemplate();
			
			SqlRowSet results = jdbcTemplateObject.queryForRowSet("select * from student");
			
		    while (results.next()) {
		        System.out.println(results.getString("firstname") + " ->> " + results.getString("lastname"));
		        
		      }
			
		}catch(Exception e ){
			
			System.out.println("------------------  ERROR : "+e.getMessage());
		}
		
	}
	
}
