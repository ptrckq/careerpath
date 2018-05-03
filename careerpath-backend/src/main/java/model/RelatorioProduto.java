package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="Relatorio_Produto")
@Entity
public class RelatorioProduto {
	
	@Id
	@Column(name="Relatorio_id_relatorio")
	private Integer relatorioId;
	
	
	@Column(name="Produto_id_produto")
	private String produtoId;
}
