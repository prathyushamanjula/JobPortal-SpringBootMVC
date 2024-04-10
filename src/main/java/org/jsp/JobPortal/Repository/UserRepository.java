package org.jsp.JobPortal.Repository;

import org.jsp.JobPortal.Dto.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer>
{
	User findByEmail(String email);

	User findByMobile(long mobile);
}
