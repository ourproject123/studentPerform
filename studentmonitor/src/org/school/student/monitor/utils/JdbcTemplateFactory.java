package org.school.student.monitor.utils;

import javax.sql.DataSource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class JdbcTemplateFactory {
	
public static JdbcTemplate getjdbcTemplate(){
	
	JdbcTemplate jdbcTemplateObject=null;
	
	// Create a new application context. this processes the Spring config
	ApplicationContext ctx =  new ClassPathXmlApplicationContext("SpringConfigurations.xml");
	
	jdbcTemplateObject = new JdbcTemplate((DataSource) ctx.getBean("springDataSource"));

	return jdbcTemplateObject;
	
}

}
