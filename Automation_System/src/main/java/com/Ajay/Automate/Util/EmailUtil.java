package com.Ajay.Automate.Util;

import java.io.File;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class EmailUtil {

		@Value("${com.Ajay.HospitalAutomation.Email.body}")
		private String EMAIL_TEXT;

		@Value("${com.Ajay.HospitalAutomation.Email.subject}")
		private String EMAIL_SUBJECT;

		@Autowired
		JavaMailSender sender;

		
		public void SendItinary(String toAdress, String filepath) {
			
			MimeMessage message = sender.createMimeMessage();
			try {
				MimeMessageHelper helper = new MimeMessageHelper(message, true);
				helper.setTo(toAdress);
				helper.setSubject(EMAIL_SUBJECT);
				helper.setText(EMAIL_TEXT);
				helper.addAttachment("Prescription", new File(filepath));
				sender.send(message);
			} catch (MessagingException e) {
				System.out.println(e);
			}

		}
	}

