package com.Ajay.Automate.Controller;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class BcryptPasswordEncoder {

	public static void main(String[] args) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String encodedString = encoder.encode("hello");
		for(int i=1;i<10;i++) {
			System.out.println(encodedString);
		}
	}
}
