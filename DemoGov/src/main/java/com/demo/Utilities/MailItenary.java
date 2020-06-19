package com.demo.Utilities;

import java.util.ArrayList;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class MailItenary {

	@Value("${com.Ajay.HospitalAutomation.Email.body}")
	private String EMAIL_TEXT;

	@Value("${com.Ajay.HospitalAutomation.Email.subject}")
	private String EMAIL_SUBJECT;

	@Autowired
	JavaMailSender sender;
	
	List<String> otps= new ArrayList<String>();

	
	
	public void SendItinary(String toAdress, String filepath, String otp) {
		
		
		MimeMessage message = sender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			helper.setTo(toAdress);
			helper.setSubject(EMAIL_SUBJECT);
			helper.setText(EMAIL_TEXT);
			helper.setText("Your verification otp is "+otp);
//			helper.setText("Otp is valid only for 5 minutes. Register fast!!!");
			sender.send(message);
		} catch (MessagingException e) {
			System.out.println(e);
		}
	}
}
