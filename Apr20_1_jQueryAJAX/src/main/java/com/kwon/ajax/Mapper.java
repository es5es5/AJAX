package com.kwon.ajax;

import java.util.List;

public interface Mapper {
	public abstract List<Menu> getAllMenu();
	public abstract List<Menu> searchMenuByPrice(Menu m);
	public abstract List<Menu> searchMenuByName(Menu m);
	
	public abstract List<Student> getAllStudent();
	
}





