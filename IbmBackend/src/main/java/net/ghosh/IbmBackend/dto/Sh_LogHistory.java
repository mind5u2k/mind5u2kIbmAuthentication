package net.ghosh.IbmBackend.dto;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "sh_logHistory")
public class Sh_LogHistory implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	private String historyType;
	private String status;
	private Timestamp timestamp;
	private String serviceReqNo;

	@ManyToOne
	private Sh_SharedID sharedId;

	@ManyToOne
	private Sh_User user;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getHistoryType() {
		return historyType;
	}

	public void setHistoryType(String historyType) {
		this.historyType = historyType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Sh_User getUser() {
		return user;
	}

	public void setUser(Sh_User user) {
		this.user = user;
	}

	public Timestamp getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}

	public Sh_SharedID getSharedId() {
		return sharedId;
	}

	public void setSharedId(Sh_SharedID sharedId) {
		this.sharedId = sharedId;
	}

	public String getServiceReqNo() {
		return serviceReqNo;
	}

	public void setServiceReqNo(String serviceReqNo) {
		this.serviceReqNo = serviceReqNo;
	}

}
