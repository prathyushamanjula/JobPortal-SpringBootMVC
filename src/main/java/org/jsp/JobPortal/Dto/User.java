package org.jsp.JobPortal.Dto;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.OneToMany;
import lombok.Data;

@Data
@Entity
public class User
{
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	String name;
	String email;
	long mobile;
	String password;
	String gender;
    LocalDate dob;
    String highestdegree;
	double tenthPercentage;
	double twelthPercentage;
	double degreePercenatge;
	double masterPercentage;
    @Lob
	@Column(columnDefinition = "MEDIUMBLOB")
    byte[] resume;
    int otp;
    boolean verified;
    boolean prime;
	LocalDateTime otpCreatedTime;
	boolean experience;
	int workExperience;
	LocalDate noticePeriod;
	String roleDescription;
	boolean profileComplete;
    
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    List<JobApplication> applications;
    
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	List<Notification> notifications;
}