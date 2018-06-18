package com.kwon.ajax;

import java.math.BigDecimal;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;


public class Student {
	private String s_name;
	private BigDecimal s_kor;
	private BigDecimal s_eng;
	private BigDecimal s_mat;

	public Student() {
		// TODO Auto-generated constructor stub
	}

	public String getS_name() {
		return s_name;
	}

	
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public BigDecimal getS_kor() {
		return s_kor;
	}

	
	public void setS_kor(BigDecimal s_kor) {
		this.s_kor = s_kor;
	}

	public BigDecimal getS_eng() {
		return s_eng;
	}

	
	public void setS_eng(BigDecimal s_eng) {
		this.s_eng = s_eng;
	}

	public BigDecimal getS_mat() {
		return s_mat;
	}

	
	public void setS_mat(BigDecimal s_mat) {
		this.s_mat = s_mat;
	}

}
