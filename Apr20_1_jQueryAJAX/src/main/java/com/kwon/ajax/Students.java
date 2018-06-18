package com.kwon.ajax;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;


public class Students {
	private List<Student> student;

	public Students() {
		// TODO Auto-generated constructor stub
	}

	public Students(List<Student> student) {
		super();
		this.student = student;
	}

	public List<Student> getStudent() {
		return student;
	}

	
	public void setStudent(List<Student> student) {
		this.student = student;
	}

}
