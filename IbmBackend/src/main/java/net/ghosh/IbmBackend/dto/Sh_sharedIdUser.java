package net.ghosh.IbmBackend.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "sh_sharedIdUser")
public class Sh_sharedIdUser implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@ManyToOne
	private Sh_User user;

	@ManyToOne
	private Sh_SharedID sharedID;

	@ManyToOne
	private Sh_Roles roles;

	public Sh_Roles getRoles() {
		return roles;
	}

	public void setRoles(Sh_Roles roles) {
		this.roles = roles;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Sh_User getUser() {
		return user;
	}

	public void setUser(Sh_User user) {
		this.user = user;
	}

	public Sh_SharedID getSharedID() {
		return sharedID;
	}

	public void setSharedID(Sh_SharedID sharedID) {
		this.sharedID = sharedID;
	}
}
