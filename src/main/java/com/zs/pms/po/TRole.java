package com.zs.pms.po;

import java.io.Serializable;

public class TRole implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -3966055894868205057L;
	
	@Override
	public String toString() {
		return "TRole [id=" + id + ", pname=" + pname + "]";
	}
	private int id;
	private String pname;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	
	
}
