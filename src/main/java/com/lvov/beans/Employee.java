package com.lvov.beans;

import javax.ejb.EJB;
import javax.ejb.Stateless;

@Stateless
@EJB(beanInterface = IEmployee.class, beanName = "Employee", name = "Employee")
public class Employee implements IEmployee {
	public String getName()
	{
		return "Employee name.";
	}
}
