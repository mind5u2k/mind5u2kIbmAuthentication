package net.ghosh.IbmBackend.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "sh_user")
public class Sh_User implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	private String userId;
	private String name;
	private String mailId;

	private String year;
	private String w3ManagerAnnualJustificationStatus;
	private String passOwnerAnnualJusrificationStatus;

	private String superAdmin;
	private String admin;
	private String passwordOwner;
	private String authorizedReaders;
	private String customerDelegate;
	private String platformHead;
	private String compliance;
	private String w3Manager;

	@ManyToOne
	private Sh_Countries country;

	/*
	 * @ManyToOne private Sh_Roles role;
	 */

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public String getSuperAdmin() {
		return superAdmin;
	}

	public void setSuperAdmin(String superAdmin) {
		this.superAdmin = superAdmin;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	public String getPasswordOwner() {
		return passwordOwner;
	}

	public void setPasswordOwner(String passwordOwner) {
		this.passwordOwner = passwordOwner;
	}

	public String getAuthorizedReaders() {
		return authorizedReaders;
	}

	public void setAuthorizedReaders(String authorizedReaders) {
		this.authorizedReaders = authorizedReaders;
	}

	public String getCustomerDelegate() {
		return customerDelegate;
	}

	public void setCustomerDelegate(String customerDelegate) {
		this.customerDelegate = customerDelegate;
	}

	public String getPlatformHead() {
		return platformHead;
	}

	public void setPlatformHead(String platformHead) {
		this.platformHead = platformHead;
	}

	public String getCompliance() {
		return compliance;
	}

	public void setCompliance(String compliance) {
		this.compliance = compliance;
	}

	public String getW3Manager() {
		return w3Manager;
	}

	public void setW3Manager(String w3Manager) {
		this.w3Manager = w3Manager;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMailId() {
		return mailId;
	}

	public void setMailId(String mailId) {
		this.mailId = mailId;
	}

	/*-public Sh_Roles getRole() {
		return role;
	}

	public void setRole(Sh_Roles role) {
		this.role = role;
	}*/

	public Sh_Countries getCountry() {
		return country;
	}

	public void setCountry(Sh_Countries country) {
		this.country = country;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getW3ManagerAnnualJustificationStatus() {
		return w3ManagerAnnualJustificationStatus;
	}

	public void setW3ManagerAnnualJustificationStatus(
			String w3ManagerAnnualJustificationStatus) {
		this.w3ManagerAnnualJustificationStatus = w3ManagerAnnualJustificationStatus;
	}

	public String getPassOwnerAnnualJusrificationStatus() {
		return passOwnerAnnualJusrificationStatus;
	}

	public void setPassOwnerAnnualJusrificationStatus(
			String passOwnerAnnualJusrificationStatus) {
		this.passOwnerAnnualJusrificationStatus = passOwnerAnnualJusrificationStatus;
	}

}
