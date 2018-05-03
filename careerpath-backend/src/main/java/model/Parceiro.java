package model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Parceiro")
public class Parceiro {

	@Id
	@Column (name="cpf_parceiro")
	private String cpfParceiro;
	
	@Column(name="empresa")
	private String empresa;
	
	@Column(name="nome_completo")
	private String nomeCompleto;
	
	private String cargo;
	
	private String telefone;
	
	private String email;
	
	@Column(name="data_cadastro")
	private Date dataCadastro;
	
	@Column(name="data_atualizacao")
	private Date dataAtualizacao;

	
	public Parceiro(){
		
	}
	
	
	
	public Parceiro(String cpfParceiro, String empresa, String nomeCompleto, String cargo, String telefone,
			String email, Date dataAtualizacao) {
		super();
		this.cpfParceiro = cpfParceiro;
		this.empresa = empresa;
		this.nomeCompleto = nomeCompleto;
		this.cargo = cargo;
		this.telefone = telefone;
		this.email = email;
		this.dataAtualizacao = dataAtualizacao;
	}



	public Parceiro(String cpfParceiro, String empresa, String nomeCompleto, String cargo, String telefone,
			String email) {
		super();
		this.cpfParceiro = cpfParceiro;
		this.empresa = empresa;
		this.nomeCompleto = nomeCompleto;
		this.cargo = cargo;
		this.telefone = telefone;
		this.email = email;
	}



	public Parceiro(String cpfParceiro, String empresa, String nomeCompleto, String cargo, String telefone,
			String email, Date dataCadastro, Date dataAtualizacao) {
		super();
		this.cpfParceiro = cpfParceiro;
		this.empresa = empresa;
		this.nomeCompleto = nomeCompleto;
		this.cargo = cargo;
		this.telefone = telefone;
		this.email = email;
		this.dataCadastro = dataCadastro;
		this.dataAtualizacao = dataAtualizacao;
	}



	public String getCpfParceiro() {
		return cpfParceiro;
	}



	public void setCpfParceiro(String cpfParceiro) {
		this.cpfParceiro = cpfParceiro;
	}



	public String getEmpresa() {
		return empresa;
	}



	public void setEmpresa(String empresa) {
		this.empresa = empresa;
	}



	public String getNomeCompleto() {
		return nomeCompleto;
	}



	public void setNomeCompleto(String nomeCompleto) {
		this.nomeCompleto = nomeCompleto;
	}



	public String getCargo() {
		return cargo;
	}



	public void setCargo(String cargo) {
		this.cargo = cargo;
	}



	public String getTelefone() {
		return telefone;
	}



	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public Date getDataCadastro() {
		return dataCadastro;
	}



	public void setDataCadastro(Date dataCadastro) {
		this.dataCadastro = dataCadastro;
	}



	public Date getDataAtualizacao() {
		return dataAtualizacao;
	}



	public void setDataAtualizacao(Date dataAtualizacao) {
		this.dataAtualizacao = dataAtualizacao;
	}



	@Override
	public String toString() {
		return "Parceiro: " + this.nomeCompleto + this.cargo + this.cpfParceiro + this.telefone + this.email  ;
	}

}