package com.kwon.ajax;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Menus {
	private List<Menu> menu;

	public Menus() {
		// TODO Auto-generated constructor stub
	}

	public Menus(List<Menu> menu) {
		super();
		this.menu = menu;
	}

	public List<Menu> getMenu() {
		return menu;
	}

	@XmlElement
	public void setMenu(List<Menu> menu) {
		this.menu = menu;
	}

}
