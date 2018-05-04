package webservice;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import service.ProdutoService;

@Path("/teste")
public class TesteRest {

	@GET
	@Path("/acreditacao")
	public void teste() {
		ProdutoService asvc = new ProdutoService();
		asvc.getListaProduto();
	}
}
