package net.ghosh.IbmBackend.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "sh_w3managers")
public class Sh_W3Manager implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@ManyToOne
	private Sh_User w3Manager;

	@ManyToOne
	private Sh_User pass_Owner;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Sh_User getW3Manager() {
		return w3Manager;
	}

	public void setW3Manager(Sh_User w3Manager) {
		this.w3Manager = w3Manager;
	}

	public Sh_User getPass_Owner() {
		return pass_Owner;
	}

	public void setPass_Owner(Sh_User pass_Owner) {
		this.pass_Owner = pass_Owner;
	}

}
