package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Acreditacao_Produto")
public class AcreditacaoProduto {
	@Id
	@Column(name="Acreditacao_codigo_acreditacao")
	private String codigoAcreditacao;
	
	
	@Column(name="Acreditacao_id_perfil ")
	private String idPerfil;
	
	@Column(name="Produto_id_produto")
	private String idProduto;

	public String getCodigoAcreditacao() {
		return codigoAcreditacao;
	}

	public void setCodigoAcreditacao(String codigoAcreditacao) {
		this.codigoAcreditacao = codigoAcreditacao;
	}

	public String getIdPerfil() {
		return idPerfil;
	}

	public void setIdPerfil(String idPerfil) {
		this.idPerfil = idPerfil;
	}

	public String getIdProduto() {
		return idProduto;
	}

	public void setIdProduto(String idProduto) {
		this.idProduto = idProduto;
	}

	public AcreditacaoProduto(String codigoAcreditacao, String idPerfil, String idProduto) {
		super();
		this.codigoAcreditacao = codigoAcreditacao;
		this.idPerfil = idPerfil;
		this.idProduto = idProduto;
	}

	public AcreditacaoProduto() {
	}
	
	
}
