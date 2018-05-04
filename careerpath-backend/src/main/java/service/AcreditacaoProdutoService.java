package service;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.ws.rs.Produces;

import dao.AcreditacaoProdutoDAO;
import model.AcreditacaoProduto;

public class AcreditacaoProdutoService {
	AcreditacaoProdutoDAO dao = new AcreditacaoProdutoDAO();
	
	
	@Produces
	@RequestScoped
	public List<AcreditacaoProduto> getListaAcreditacao() {
		System.out.println(dao.getLista());
		return dao.getLista();
	}
}
