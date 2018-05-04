package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Produto")
public class Produto {

	@Id
	@Column (name="id_produto")
	private String idProduto;
	
	@Column (name="nome_produto")
	private String nomeProduto;

	public String getIdProduto() {
		return idProduto;
	}

	public void setIdProduto(String idProduto) {
		this.idProduto = idProduto;
	}

	public String getNomeProduto() {
		return nomeProduto;
	}

	public void setNomeProduto(String nomeProduto) {
		this.nomeProduto = nomeProduto;
	}

	public Produto(String idProduto, String nomeProduto) {
		super();
		this.idProduto = idProduto;
		this.nomeProduto = nomeProduto;
	}

	public Produto() {
	}
	
	
	
}
