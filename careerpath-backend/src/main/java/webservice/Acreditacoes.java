package webservice;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.json.JSONArray;
import org.json.JSONObject;

import model.Acreditacao;
import model.AcreditacaoProduto;
import model.Produto;
import service.AcreditacaoProdutoService;
import service.AcreditacaoService;
import service.ProdutoService;

@Path("/acreditacoes")
public class Acreditacoes {

	AcreditacaoService asvc = new AcreditacaoService();
	ProdutoService     psvc = new ProdutoService();
	AcreditacaoProdutoService apsvc = new AcreditacaoProdutoService();
	
	@Produces({MediaType.TEXT_PLAIN})
	@GET
	@Path("/getAll")
	public Response getListaAcreditacoes() {
		
		List<Acreditacao> listaAcreditacao = asvc.getListaAcreditacao();
		List<Produto> listaProduto = psvc.getListaProduto();
		List<AcreditacaoProduto> listaAP = apsvc.getListaAcreditacao();
		
		JSONArray acreditacoes = new JSONArray();
		for (Acreditacao acred : listaAcreditacao) {
			JSONObject acreditacao = new JSONObject();
			acreditacao.put("nomeAcreditacao", acred.getNomeAcreditacao());
			
		}
		
		return Response.ok().build();
	}
}
