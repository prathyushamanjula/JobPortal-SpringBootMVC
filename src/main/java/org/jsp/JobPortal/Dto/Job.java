package org.jsp.JobPortal.Dto;

import java.time.LocalDateTime;
import java.util.List;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Data
@Entity
public class Job 
{
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
    String title;
    String skills;
    String description;
    String experience;
    double ctc;
    String location;  
    boolean approved;
    LocalDateTime postedTime;
	int numberOfPositions;
    
    @ManyToOne
    Recruiter recruiter;
    
    @ManyToMany(fetch = FetchType.EAGER)
    List<JobApplication> applications;
}