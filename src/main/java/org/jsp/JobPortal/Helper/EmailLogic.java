package org.jsp.JobPortal.Helper;

import java.io.UnsupportedEncodingException;

import org.jsp.JobPortal.Dto.Recruiter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class EmailLogic 
{
    @Autowired
    JavaMailSender mailSender;
	
	public void sendOtp(Recruiter recruiter) throws MessagingException, UnsupportedEncodingException
	{
		MimeMessage message=mailSender.createMimeMessage();
		MimeMessageHelper helper=new MimeMessageHelper(message);
		
		helper.setFrom("prathyusha10032001@gmail.com","Job Portal");
		helper.setTo(recruiter.getEmail());
		helper.setSubject("Verify Otp");
		helper.setText("Your Otp Is : "+recruiter.getOtp());
		
		mailSender.send(message);
	}    
}
