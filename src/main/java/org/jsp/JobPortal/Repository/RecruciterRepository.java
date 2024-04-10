package org.jsp.JobPortal.Repository;

import org.jsp.JobPortal.Dto.Recruiter;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RecruciterRepository extends JpaRepository<Recruiter, Integer>
{
	Recruiter findByEmail(String email);

	Recruiter findByMobile(long mobile);
}
