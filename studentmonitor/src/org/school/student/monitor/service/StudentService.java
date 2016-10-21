package org.school.student.monitor.service;
 
import java.util.List;

import org.school.student.monitor.model.Student;

 
public interface StudentService {
     
    Student findById(long id);
     
    Student findByName(String name);
     
    void saveStudent(Student student);
     
    void updateStudent(Student student);
     
    void deletestudentById(long id);
 
    List<Student> findAllStudents(); 
     
    void deleteAllStudent();
     
    public boolean isstudentExist(Student student);
     
}