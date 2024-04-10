package org.jsp.JobPortal.Repository;

import org.jsp.JobPortal.Dto.PaymentDetails;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PaymentDetailsRepository extends JpaRepository<PaymentDetails, Integer>
{
	PaymentDetails save(PaymentDetails details);
}
