package org.jsp.JobPortal.Service;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.json.JSONObject;
import org.jsp.JobPortal.Dao.JobDao;
import org.jsp.JobPortal.Dao.UserDao;
import org.jsp.JobPortal.Dto.Job;
import org.jsp.JobPortal.Dto.JobApplication;
import org.jsp.JobPortal.Dto.Notification;
import org.jsp.JobPortal.Dto.PaymentDetails;
import org.jsp.JobPortal.Dto.Recruiter;
import org.jsp.JobPortal.Dto.User;
import org.jsp.JobPortal.Helper.AES;
import org.jsp.JobPortal.Helper.EmailLogic;
import org.jsp.JobPortal.Helper.JobStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;
import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;
import jakarta.mail.MessagingException;
import jakarta.servlet.http.HttpSession;

@Service
public class UserService
{
	@Autowired
	UserDao userDao;

	@Autowired
	EmailLogic emailLogic;
	
	@Autowired
	JobDao jobDao;

	public String signup(User user, MultipartFile doc, ModelMap map) throws IOException, MessagingException
	{
		User user1 = userDao.findByEmail(user.getEmail());
		User user2 = userDao.findByMobile(user.getMobile());
		if (user1 == null && user2 == null) 
		{
			// Logic for encrypting password
			user.setPassword(AES.encrypt(user.getPassword(), "123"));
			int otp = new Random().nextInt(100000, 999999);
			user.setOtp(otp);
			// emailLogic.sendOtp(user);
			userDao.save(user);
			map.put("pass", "Otp Sent");
			map.put("id", user.getId());
			return "UserOtp";
		} 
		else 
		{
			map.put("fail", "Email or Mobile is Repeated");
			return "UserSignup";
		}
	}

	public String verifyotp(int id, int otp, ModelMap map)
	{
		User user = userDao.findById(id);
		if (user == null) 
		{
			map.put("fail", "Invalid ID");
			return "Home";
		}
		else 
		{
			if (user.getOtp() == otp) 
			{
				user.setVerified(true);
				userDao.save(user);
				map.put("pass", "Account Verified Success");
				return "UserLogin";
			} 
			else
			{
				map.put("fail", "Invalid OTP");
				map.put("id", id);
				return "UserOtp";
			}
		}
	}

	public String resendOtp(int id, ModelMap map)
	{
		User user = userDao.findById(id);
		if (user == null) {
			map.put("fail", "Something Went Wrong");
			return "Home";
		} 
		else 
		{
			int otp = new Random().nextInt(100000, 999999);
			user.setOtp(otp);
			user.setOtpCreatedTime(LocalDateTime.now());
			userDao.save(user);
		//	emailLogic.sendOtp(recruiter);
			map.put("pass", "Otp Sent Again");
			map.put("id", user.getId());
			return "RecruiterOtp";
		}
	}
	
	public String login(String email, String password, ModelMap map, HttpSession session) 
	{
		User user = userDao.findByEmail(email);
		session.setAttribute("user", user);
		if (user == null)
		{
			map.put("fail", "Invalid Email");
			return "UserLogin";
		} 
		else
		{
			if (user.isVerified())
			{
				// Logic for decrypting password
				if (AES.decrypt(user.getPassword(), "123").equals(password))
				{
					map.put("pass", "Login Succcess");
					return "UserHome";
				} 
				else 
				{
					map.put("fail", "Account Not Verified");
					return "UserLogin";
				}
			} 
			else 
			{
				map.put("fail", "Invalid Password");
				return "UserLogin";
			}
		}
	}
	
	public String forgotPassword(String email, ModelMap map) 
	{
		User user = userDao.findByEmail(email);
		if (user == null) 
		{
			map.put("fail", "Email Doesnot Exist");
			return "UserEmail";
		}
		else
		{
			int otp = new Random().nextInt(100000, 999999);
			user.setOtp(otp);
//			emailLogic.sendOtp(user);
			userDao.save(user);
			map.put("pass", "Otp Sent");
			map.put("id", user.getId());
			return "UserPassword";
		}
	}

	public String resetPassword(String password, int id, int otp, ModelMap map)
	{
		User user=userDao.findById(id);
		if(user.getOtp()==otp)
		{
			user.setPassword(password);
			userDao.save(user);
			map.put("pass", "Password Reset Success");
			return "UserLogin";
		}
		else 
		{
			map.put("fail", "Invalid OTP");
			map.put("id", id);
			return "UserPassword";
		}
	}

	public String getJobs(ModelMap map)
	{
		List<Job> jobs = jobDao.findByApprovedTrue();
		if(jobs.isEmpty())
		{
			map.put("fail", "No Job Posted Yet");
			return "UserHome";
		}
		else 
		{
			map.put("jobs", jobs);
			return "ViewUserJobs";
		}
	}

	public String applyJob(int id, User user, ModelMap map, HttpSession session) 
	{
		Job job = jobDao.findById(id);
		if (job == null)
		{
			map.put("fail", "Something went Wrong");
			return "Home";
		} else
		{
			if (job.getCtc() <= 4 || user.isPrime()) 
			{
				// Logic for Applying
				boolean applied = false;
				String status = "";
				List<JobApplication> applications = user.getApplications();
				if (applications == null) 
				{
					applications = new ArrayList<JobApplication>();
				}
				for (JobApplication application : applications)
				{
					if (application.getJob().getId() == job.getId())
					{
						status = application.getJobStatus().name();
						applied = true;
					}
				}

				Notification notification = new Notification();
				List<Notification> notifications = user.getNotifications();
				if (notifications == null)
				{
					notifications = new ArrayList<Notification>();
				}
				if (applied) 
				{
					notification.setMessage("Applied Already Current Status - " + status);
					notification.setTime(LocalDateTime.now());
					notifications.add(notification);
					user.setNotifications(notifications);
					userDao.save(user);
					map.put("fail", "Applied Already Current Status - " + status);
					return "UserHome";
				} 
				else
				{
					JobApplication application = new JobApplication();
					application.setUser(user);
					application.setAppliedDate(LocalDateTime.now());
					application.setJobStatus(JobStatus.APPLIED);
					application.setJob(job);

					applications.add(application);
					user.setApplications(applications);
					userDao.save(user);

					List<JobApplication> applications2 = job.getApplications();
					if (applications2 == null)
					{
						applications2 = new ArrayList<JobApplication>();
					}
					applications2.add(application);
					job.setApplications(applications2);
					jobDao.save(job);
					notification.setMessage("Applied Success for the Job: " + application.getJob().getTitle());
					notification.setTime(LocalDateTime.now());
					notifications.add(notification);
					user.setNotifications(notifications);
					userDao.save(user);
					session.setAttribute("user", userDao.findById(user.getId()));
					map.put("pass", "Applied Success");
					return "UserHome";
				}
			} 
			else 
			{
				map.put("fail", "You have to be Prime memeber for Applying to this");
				return "UserHome";
			}
		}
	}

	public String buyPrime(User user, ModelMap map) throws RazorpayException
	{
		RazorpayClient razorpayClient = new RazorpayClient("rzp_test_6crAi7Zn3ZJab8", "ZOIqhYVvcwdS1AcWg8AGSOzD");
		JSONObject object = new JSONObject();
		object.put("amount", 19900);
		object.put("currency","INR");
		Order order= razorpayClient.orders.create(object);
		
		PaymentDetails details= new PaymentDetails();
		details.setTime(LocalDateTime.now());
		details.setAmount(order.get("amount").toString());
		details.setCurrency(order.get("currency").toString());
		details.setPaymentId(null);
		details.setOrderId(order.get("id").toString());
		details.setStatus(order.get("status"));
		details.setKeyDetails("rzp_test_6crAi7Zn3ZJab8");
		
		userDao.save(details);
		map.put("details", details);
		map.put("User", user);
		return "PaymentPage";
	}

	public String paymentDone(int id, User user, HttpSession session, String razorpay_payment_id, ModelMap map)
	{
		PaymentDetails details = userDao.findPaymentById(id);
		if (details == null) 
		{
			map.put("fail", "Something went Wrong");
			return "Home";
		} 
		else
		{
			if (razorpay_payment_id != null) 
			{
				details.setPaymentId(razorpay_payment_id);
				userDao.save(details);
				user.setPrime(true);
				userDao.save(user);
				session.setAttribute("user", user);
				map.put("pass", "Prime Purchased Successfully");
			} 
			else 
			{
				map.put("fail", "Payment Failed");
			}
			return "UserHome";
		}
	}

	public String viewMyApplications(User user, ModelMap map) 
	{
		List<JobApplication> applications = user.getApplications();
		if(applications == null || applications.isEmpty())
		{
			map.put("fail", "Not Applied For Any Job Yet");
			return "UserHome";
		}
		else
		{
			map.put("applications", applications);
			return "ViewApplications";
		}
	}
	
	public String viewNotifications(User user, ModelMap map)
	{
		List<Notification> notifications = user.getNotifications();
		if (notifications == null || notifications.isEmpty())
		{
			map.put("fail", "No Notifications Yet");
			return "UserHome";
		} 
		else 
		{
			map.put("notifications", notifications);
			return "ViewNotifications";
		}
	}

	public String deleteNotification(User user, int id, ModelMap map, HttpSession session)
	{
		Notification notification = userDao.findNotification(id);
		user.getNotifications().remove(notification);
		userDao.save(user);
		session.setAttribute("user", user);
		userDao.deleteNotification(id);
		session.setAttribute("user", userDao.findById(user.getId()));
		map.put("pass", "Notification Removed Success");
		return viewNotifications(user, map);
	}

	public String editProfile(User user, ModelMap map, HttpSession session)
	{
		return null;
	}
}