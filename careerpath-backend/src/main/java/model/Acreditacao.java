package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Acreditacao")
public class Acreditacao {

	@Id
	@Column (name="codigo_acreditacao")
	private String codigoAcreditacao;
	
	@Column (name="nome_acreditacao")
	private String nomeAcreditacao ;
	
	@Column (name="id_perfil")
	private String idPerfil;

	public String getCodigoAcreditacao() {
		return codigoAcreditacao;
	}

	public void setCodigoAcreditacao(String codigoAcreditacao) {
		this.codigoAcreditacao = codigoAcreditacao;
	}

	public String getNomeAcreditacao() {
		return nomeAcreditacao;
	}

	public void setNomeAcreditacao(String nomeAcreditacao) {
		this.nomeAcreditacao = nomeAcreditacao;
	}

	public String getIdPerfil() {
		return idPerfil;
	}

	public void setIdPerfil(String idPerfil) {
		this.idPerfil = idPerfil;
	}

	public Acreditacao(String codigoAcreditacao, String nomeAcreditacao, String idPerfil) {
		super();
		this.codigoAcreditacao = codigoAcreditacao;
		this.nomeAcreditacao = nomeAcreditacao;
		this.idPerfil = idPerfil;
	}

	public Acreditacao() {
	}
	
	
}