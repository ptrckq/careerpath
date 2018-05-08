package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Perfil")
public class Perfil {

	
	@Id
	@Column(name="id_perfil")
	private String idPerfil;
	
	@Column(name="nome_perfil")
	private String nomePerfil;

	public String getIdPerfil() {
		return idPerfil;
	}

	public void setIdPerfil(String idPerfil) {
		this.idPerfil = idPerfil;
	}

	public String getNomePerfil() {
		return nomePerfil;
	}

	public void setNomePerfil(String nomePerfil) {
		this.nomePerfil = nomePerfil;
	}

	public Perfil(String idPerfil, String nomePerfil) {
		super();
		this.idPerfil = idPerfil;
		this.nomePerfil = nomePerfil;
	}

	public Perfil() {
	}
	
	
	
}
