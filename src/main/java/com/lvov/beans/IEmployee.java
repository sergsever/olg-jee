package com.lvov.beans;

import javax.ejb.Remote;

@Remote
public interface IEmployee {
	public String getName();
}
