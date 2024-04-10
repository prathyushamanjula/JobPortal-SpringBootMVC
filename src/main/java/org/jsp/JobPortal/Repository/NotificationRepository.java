package org.jsp.JobPortal.Repository;

import org.jsp.JobPortal.Dto.Notification;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NotificationRepository extends JpaRepository<Notification, Integer>
{

}
