package net.ghosh.IbmBackend.dto;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "sh_sharedId")
public class Sh_SharedID implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String ipAddress;
	private String customerName;
	private String customerNo;
	private String platformName;
	private String userId;
	private String sysNodeName;
	private String serverLocation;
	private String description;

	@ManyToOne
	private Sh_User passOwner;

	@ManyToOne
	private Sh_User lastUpdatedUser;

	@ManyToOne
	private Sh_User customerDpeDelegate;

	@ManyToOne
	private Sh_User platformHead;

	@ManyToOne
	private Sh_User compliance;

	private String teamName;
	private int revalidationPeriod;
	private String lastuserIdAccessRevalidationDate;
	private String checkInCheckOutRequired;
	private String forcePWChange;
	private String risk;
	private String highRiskDetails;
	private String justification_whyIdShared;
	private String interactiveNonInteractive;
	private String informOwnerwhenPassViewed;
	private String informCustomerPassViewed;
	private String passwordJustification;
	private String privileges;
	private String CR_ticketNo;
	private String remarks;
	private String status;
	private String pass;
	private Date lastPassChangeDate;
	private String complianceApproval;
	private String platformHeadApproval;

	public Sh_User getPassOwner() {
		return passOwner;
	}

	public void setPassOwner(Sh_User passOwner) {
		this.passOwner = passOwner;
	}

	public Sh_User getPlatformHead() {
		return platformHead;
	}

	public void setPlatformHead(Sh_User platformHead) {
		this.platformHead = platformHead;
	}

	public Date getLastPassChangeDate() {
		return lastPassChangeDate;
	}

	public void setLastPassChangeDate(Date lastPassChangeDate) {
		this.lastPassChangeDate = lastPassChangeDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getPlatformName() {
		return platformName;
	}

	public void setPlatformName(String platformName) {
		this.platformName = platformName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getSysNodeName() {
		return sysNodeName;
	}

	public void setSysNodeName(String sysNodeName) {
		this.sysNodeName = sysNodeName;
	}

	public String getServerLocation() {
		return serverLocation;
	}

	public void setServerLocation(String serverLocation) {
		this.serverLocation = serverLocation;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public int getRevalidationPeriod() {
		return revalidationPeriod;
	}

	public void setRevalidationPeriod(int revalidationPeriod) {
		this.revalidationPeriod = revalidationPeriod;
	}

	public String getLastuserIdAccessRevalidationDate() {
		return lastuserIdAccessRevalidationDate;
	}

	public void setLastuserIdAccessRevalidationDate(
			String lastuserIdAccessRevalidationDate) {
		this.lastuserIdAccessRevalidationDate = lastuserIdAccessRevalidationDate;
	}

	public String getCheckInCheckOutRequired() {
		return checkInCheckOutRequired;
	}

	public void setCheckInCheckOutRequired(String checkInCheckOutRequired) {
		this.checkInCheckOutRequired = checkInCheckOutRequired;
	}

	public String getForcePWChange() {
		return forcePWChange;
	}

	public void setForcePWChange(String forcePWChange) {
		this.forcePWChange = forcePWChange;
	}

	public String getRisk() {
		return risk;
	}

	public void setRisk(String risk) {
		this.risk = risk;
	}

	public String getHighRiskDetails() {
		return highRiskDetails;
	}

	public void setHighRiskDetails(String highRiskDetails) {
		this.highRiskDetails = highRiskDetails;
	}

	public String getJustification_whyIdShared() {
		return justification_whyIdShared;
	}

	public void setJustification_whyIdShared(String justification_whyIdShared) {
		this.justification_whyIdShared = justification_whyIdShared;
	}

	public String getInteractiveNonInteractive() {
		return interactiveNonInteractive;
	}

	public void setInteractiveNonInteractive(String interactiveNonInteractive) {
		this.interactiveNonInteractive = interactiveNonInteractive;
	}

	public String getCustomerNo() {
		return customerNo;
	}

	public void setCustomerNo(String customerNo) {
		this.customerNo = customerNo;
	}

	public String getPrivileges() {
		return privileges;
	}

	public void setPrivileges(String privileges) {
		this.privileges = privileges;
	}

	public String getCR_ticketNo() {
		return CR_ticketNo;
	}

	public void setCR_ticketNo(String cR_ticketNo) {
		CR_ticketNo = cR_ticketNo;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getPasswordJustification() {
		return passwordJustification;
	}

	public void setPasswordJustification(String passwordJustification) {
		this.passwordJustification = passwordJustification;
	}

	public Sh_User getCustomerDpeDelegate() {
		return customerDpeDelegate;
	}

	public void setCustomerDpeDelegate(Sh_User customerDpeDelegate) {
		this.customerDpeDelegate = customerDpeDelegate;
	}

	public String getInformOwnerwhenPassViewed() {
		return informOwnerwhenPassViewed;
	}

	public void setInformOwnerwhenPassViewed(String informOwnerwhenPassViewed) {
		this.informOwnerwhenPassViewed = informOwnerwhenPassViewed;
	}

	public String getInformCustomerPassViewed() {
		return informCustomerPassViewed;
	}

	public void setInformCustomerPassViewed(String informCustomerPassViewed) {
		this.informCustomerPassViewed = informCustomerPassViewed;
	}

	public Sh_User getLastUpdatedUser() {
		return lastUpdatedUser;
	}

	public void setLastUpdatedUser(Sh_User lastUpdatedUser) {
		this.lastUpdatedUser = lastUpdatedUser;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getComplianceApproval() {
		return complianceApproval;
	}

	public void setComplianceApproval(String complianceApproval) {
		this.complianceApproval = complianceApproval;
	}

	public String getPlatformHeadApproval() {
		return platformHeadApproval;
	}

	public void setPlatformHeadApproval(String platformHeadApproval) {
		this.platformHeadApproval = platformHeadApproval;
	}

	public Sh_User getCompliance() {
		return compliance;
	}

	public void setCompliance(Sh_User compliance) {
		this.compliance = compliance;
	}

}
