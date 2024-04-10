package org.jsp.JobPortal.Dao;

import org.jsp.JobPortal.Dto.Notification;
import org.jsp.JobPortal.Dto.PaymentDetails;
import org.jsp.JobPortal.Dto.User;
import org.jsp.JobPortal.Repository.NotificationRepository;
import org.jsp.JobPortal.Repository.PaymentDetailsRepository;
import org.jsp.JobPortal.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao
{
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	PaymentDetailsRepository paymentDetailsRepository;

	@Autowired
	NotificationRepository notificationRepository;
	
	public User findByEmail(String email) 
	{
		return userRepository.findByEmail(email);
	}

	public User findByMobile(long mobile)
	{
		return userRepository.findByMobile(mobile);
	}

	public void save(User user) 
	{
		userRepository.save(user);
	}

	public User findById(int id) 
	{
		return userRepository.findById(id).orElse(null);
	}

	public PaymentDetails save(PaymentDetails details) 
	{
		return paymentDetailsRepository.save(details);		
	}

	public PaymentDetails findPaymentById(int id) 
	{
		return paymentDetailsRepository.findById(id).orElse(null);
	}

	public void deleteNotification(int id)
	{
		notificationRepository.deleteById(id);
	}
	
	public Notification findNotification(int id) 
	{
		return notificationRepository.findById(id).orElse(null);
	}	
}

