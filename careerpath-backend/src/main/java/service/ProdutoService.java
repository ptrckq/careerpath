package service;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.ws.rs.Produces;

import dao.ProdutoDAO;
import model.Produto;

public class ProdutoService {
	ProdutoDAO dao = new ProdutoDAO();
	
	
	@Produces
	@RequestScoped
	public List<Produto> getListaProduto() {
		System.out.println(dao.getLista());
		return dao.getLista();
	}
}
