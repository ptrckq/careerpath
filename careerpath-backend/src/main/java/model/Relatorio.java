package model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Relatorio")
public class Relatorio {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id_relatorio")
	private Integer idRelatorio;

	@Column(name = "nome_acreditacao")
	private String nomeAcreditacao;

	@Column(name = "nome_perfil")
	private String nomePerfil;

	@Column(name = "codigo_acreditacao")
	private String codigoAcreditacao;

	@Column(name = "cpf_parceiro")
	private String cpfPareceiro;

	@Column(name = "data_inscricao")
	private Date dataInscricao;

	
	public Relatorio(Integer idRelatorio, String nomeAcreditacao, String nomePerfil, String codigoAcreditacao,
			String cpfPareceiro, Date dataInscricao) {
		this.idRelatorio = idRelatorio;
		this.nomeAcreditacao = nomeAcreditacao;
		this.nomePerfil = nomePerfil;
		this.codigoAcreditacao = codigoAcreditacao;
		this.cpfPareceiro = cpfPareceiro;
		this.dataInscricao = dataInscricao;
	}
	
	

	public Relatorio(String nomeAcreditacao, String nomePerfil, String codigoAcreditacao, String cpfPareceiro,
			Date dataInscricao) {
		super();
		this.nomeAcreditacao = nomeAcreditacao;
		this.nomePerfil = nomePerfil;
		this.codigoAcreditacao = codigoAcreditacao;
		this.cpfPareceiro = cpfPareceiro;
		this.dataInscricao = dataInscricao;
	}



	public Relatorio() {
	}



	public Integer getIdRelatorio() {
		return idRelatorio;
	}

	public void setIdRelatorio(Integer idRelatorio) {
		this.idRelatorio = idRelatorio;
	}

	public String getNomeAcreditacao() {
		return nomeAcreditacao;
	}

	public void setNomeAcreditacao(String nomeAcreditacao) {
		this.nomeAcreditacao = nomeAcreditacao;
	}

	public String getNomePerfil() {
		return nomePerfil;
	}

	public void setNomePerfil(String nomePerfil) {
		this.nomePerfil = nomePerfil;
	}

	public String getCodigoAcreditacao() {
		return codigoAcreditacao;
	}

	public void setCodigoAcreditacao(String codigoAcreditacao) {
		this.codigoAcreditacao = codigoAcreditacao;
	}

	public String getCpfPareceiro() {
		return cpfPareceiro;
	}

	public void setCpfPareceiro(String cpfPareceiro) {
		this.cpfPareceiro = cpfPareceiro;
	}

	public Date getDataInscricao() {
		return dataInscricao;
	}

	public void setDataInscricao(Date dataInscricao) {
		this.dataInscricao = dataInscricao;
	}

}
