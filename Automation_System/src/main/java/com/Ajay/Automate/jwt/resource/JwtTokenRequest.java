package com.Ajay.Automate.jwt.resource;

import java.io.Serializable;

public class JwtTokenRequest implements Serializable {

	private static final long serialVersionUID = -5616176897013108345L;
	
//	{
//	    "token": "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhamF5c2Frc2VuYTE5OTgiLCJleHAiOjE1ODc1NjYzMTksImlhdCI6MTU4Njk2MTUxOX0.zvZZpYrFIRHJaaChwNIxVv5za20iBo3VKRdF96A6yJBapLFEvq3-6Z3teaTR3EgnDSgMBaMuXlBysQrKVOvrQg"
//	}

	private String username;
	private String password;

	public JwtTokenRequest() {
		super();
	}

	public JwtTokenRequest(String username, String password) {
		this.setUsername(username);
		this.setPassword(password);
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}