package org.jsp.JobPortal.Dto;

import java.time.LocalDateTime;
import org.springframework.stereotype.Component;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
@Component
public class PaymentDetails 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	LocalDateTime time;
	String amount;
	String currency;
	String paymentId;
	String orderId;
	String status;
	String keyDetails;
}
