package org.jsp.JobPortal.Repository;

import org.jsp.JobPortal.Dto.Job;
import org.jsp.JobPortal.Dto.JobApplication;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JobApplicationRepository extends JpaRepository<JobApplication, Integer>
{

}
