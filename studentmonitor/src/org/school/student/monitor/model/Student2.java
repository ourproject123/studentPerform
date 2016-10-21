package org.school.student.monitor.model;

import java.util.Date;

public class Student2 {
	
int studentId;
String studentFirstName;
String studentMiddleName;
String studentLastName;
Date studentDob;
Date studentJoinDat;
int studentCurrentYear;
String studentRace;
String studentReligion;
String studentMotherName;
String studentFatherName;
String studentImmdContact;
String studentContactNumber;
String studentAddress;
String studentCity;
String studentProvince;

public Student2(int studentId, String studentFirstName, String studentMiddleName, String studentLastName,
		Date studentDob, Date studentJoinDat, int studentCurrentYear, String studentRace, String studentReligion,
		String studentMotherName, String studentFatherName, String studentImmdContact, String studentContactNumber,
		String studentAddress, String studentCity, String studentProvince) {
	super();
	this.studentId = studentId;
	this.studentFirstName = studentFirstName;
	this.studentMiddleName = studentMiddleName;
	this.studentLastName = studentLastName;
	this.studentDob = studentDob;
	this.studentJoinDat = studentJoinDat;
	this.studentCurrentYear = studentCurrentYear;
	this.studentRace = studentRace;
	this.studentReligion = studentReligion;
	this.studentMotherName = studentMotherName;
	this.studentFatherName = studentFatherName;
	this.studentImmdContact = studentImmdContact;
	this.studentContactNumber = studentContactNumber;
	this.studentAddress = studentAddress;
	this.studentCity = studentCity;
	this.studentProvince = studentProvince;
}


@Override
public String toString() {
	return "Student [studentId=" + studentId + ", studentFirstName=" + studentFirstName + ", studentMiddleName="
			+ studentMiddleName + ", studentLastName=" + studentLastName + ", studentDob=" + studentDob
			+ ", studentJoinDat=" + studentJoinDat + ", studentCurrentYear=" + studentCurrentYear + ", studentRace="
			+ studentRace + ", studentReligion=" + studentReligion + ", studentMotherName=" + studentMotherName
			+ ", studentFatherName=" + studentFatherName + ", studentImmdContact=" + studentImmdContact
			+ ", studentContactNumber=" + studentContactNumber + ", studentAddress=" + studentAddress + ", studentCity="
			+ studentCity + ", studentProvince=" + studentProvince + "]";
}


public int getStudentId() {
	return studentId;
}
public void setStudentId(int studentId) {
	this.studentId = studentId;
}
public String getStudentFirstName() {
	return studentFirstName;
}
public void setStudentFirstName(String studentFirstName) {
	this.studentFirstName = studentFirstName;
}
public String getStudentMiddleName() {
	return studentMiddleName;
}
public void setStudentMiddleName(String studentMiddleName) {
	this.studentMiddleName = studentMiddleName;
}
public String getStudentLastName() {
	return studentLastName;
}
public void setStudentLastName(String studentLastName) {
	this.studentLastName = studentLastName;
}
public Date getStudentDob() {
	return studentDob;
}
public void setStudentDob(Date studentDob) {
	this.studentDob = studentDob;
}
public Date getStudentJoinDat() {
	return studentJoinDat;
}
public void setStudentJoinDat(Date studentJoinDat) {
	this.studentJoinDat = studentJoinDat;
}
public int getStudentCurrentYear() {
	return studentCurrentYear;
}
public void setStudentCurrentYear(int studentCurrentYear) {
	this.studentCurrentYear = studentCurrentYear;
}
public String getStudentRace() {
	return studentRace;
}
public void setStudentRace(String studentRace) {
	this.studentRace = studentRace;
}
public String getStudentReligion() {
	return studentReligion;
}
public void setStudentReligion(String studentReligion) {
	this.studentReligion = studentReligion;
}
public String getStudentMotherName() {
	return studentMotherName;
}
public void setStudentMotherName(String studentMotherName) {
	this.studentMotherName = studentMotherName;
}
public String getStudentFatherName() {
	return studentFatherName;
}
public void setStudentFatherName(String studentFatherName) {
	this.studentFatherName = studentFatherName;
}
public String getStudentImmdContact() {
	return studentImmdContact;
}
public void setStudentImmdContact(String studentImmdContact) {
	this.studentImmdContact = studentImmdContact;
}
public String getStudentContactNumber() {
	return studentContactNumber;
}
public void setStudentContactNumber(String studentContactNumber) {
	this.studentContactNumber = studentContactNumber;
}
public String getStudentAddress() {
	return studentAddress;
}
public void setStudentAddress(String studentAddress) {
	this.studentAddress = studentAddress;
}
public String getStudentCity() {
	return studentCity;
}
public void setStudentCity(String studentCity) {
	this.studentCity = studentCity;
}
public String getStudentProvince() {
	return studentProvince;
}
public void setStudentProvince(String studentProvince) {
	this.studentProvince = studentProvince;
}


}
