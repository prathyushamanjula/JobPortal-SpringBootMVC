package org.jsp.JobPortal.Dao;

import java.util.List;

import org.jsp.JobPortal.Dto.Job;
import org.jsp.JobPortal.Dto.JobApplication;
import org.jsp.JobPortal.Repository.JobApplicationRepository;
import org.jsp.JobPortal.Repository.JobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class JobDao
{
    @Autowired
    JobRepository jobRepository;
   
    @Autowired
    JobApplicationRepository applicationRepository;
    
	public List<Job> fetcAll() 
	{
		return jobRepository.findAll();
	}

	public Job findById(int id) 
	{
		return jobRepository.findById(id).orElse(null);
	}

	public void save(Job job) 
	{
        jobRepository.save(job);		
	}

	public List<Job> findByApprovedTrue() 
	{
		return jobRepository.findByApprovedTrue();
	}
	
	public JobApplication findApplicationById(int id) 
	{
		return applicationRepository.findById(id).orElse(null);
	}

	public void saveApplication(JobApplication application) 
	{
		applicationRepository.save(application);
	}
}
