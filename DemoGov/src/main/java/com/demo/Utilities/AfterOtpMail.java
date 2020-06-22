package com.demo.Utilities;


import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class AfterOtpMail {

	@Autowired
	JavaMailSender sender;
	
	
	public void SendItinary(String toAdress, String filepath, String sub, String text) {
		
		
		MimeMessage message = sender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setTo(toAdress);
			helper.setSubject(sub);
			helper.setText(text);
//			helper.setText("Otp is valid only for 5 minutes. Register fast!!!");
			sender.send(message);
		} catch (MessagingException e) {
			System.out.println(e);
		}
	}
}
