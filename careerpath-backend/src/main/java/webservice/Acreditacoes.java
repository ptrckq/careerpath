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
import model.Perfil;
import model.Produto;
import service.AcreditacaoProdutoService;
import service.AcreditacaoService;
import service.PerfilService;
import service.ProdutoService;

@Path("/dados")
public class Acreditacoes {
	PerfilService perfilsvc = new PerfilService();
	AcreditacaoService asvc = new AcreditacaoService();
	ProdutoService psvc = new ProdutoService();
	AcreditacaoProdutoService apsvc = new AcreditacaoProdutoService();

	@Produces({ MediaType.TEXT_PLAIN })
	@GET
	@Path("/getAcreditacoes")
	public Response getListaAcreditacoes() {
		JSONArray acreditacoes = new Acreditacoes().retornaAcreditacoes();
		return Response.ok(acreditacoes).build();

	}

	

	public JSONArray retornaAcreditacoes() {
		List<Perfil> listaPerfil = perfilsvc.getListaPerfil();
		List<Acreditacao> listaAcreditacao = asvc.getListaAcreditacao();
		List<AcreditacaoProduto> listaAcreditacaoProduto = apsvc.getListaAcreditacao();
		
		JSONArray jsonAcreditacoes = new JSONArray();

		for (Acreditacao acred : listaAcreditacao) {
			JSONObject jsonAcreditacao = new JSONObject();
			jsonAcreditacao.put("nomeAcreditacao", acred.getNomeAcreditacao());
			jsonAcreditacao.put("codigoAcreditacao", acred.getCodigoAcreditacao());
			
			JSONArray jsonProdutosDaAcreditacao = new JSONArray();
			for(AcreditacaoProduto ap : listaAcreditacaoProduto) {
				
				
				if (ap.getCodigoAcreditacao().equals(acred.getCodigoAcreditacao())) {
					JSONObject jsonProduto = new JSONObject();
					jsonProduto.put("idProduto",ap.getIdProduto());
					jsonProdutosDaAcreditacao.put(jsonProduto);
				}
			};
			jsonAcreditacao.put("produtos", jsonProdutosDaAcreditacao);
			jsonAcreditacao.put("idPerfil",acred.getIdPerfil());
			switch (acred.getIdPerfil()) {
			case ("p1"):
				jsonAcreditacao.put("perfil", listaPerfil.get(0).getNomePerfil());
				break;
			case ("p2"):
				jsonAcreditacao.put("perfil", listaPerfil.get(1).getNomePerfil());
				break;
			case ("p3"):
				jsonAcreditacao.put("perfil", listaPerfil.get(2).getNomePerfil());
				break;
			}
			jsonAcreditacoes.put(jsonAcreditacao);

		}
		return jsonAcreditacoes;
	}
	
	@Produces({ MediaType.TEXT_PLAIN })
	@GET
	@Path("/getProdutos")
	public Response getListaProdutos() {

		JSONArray produtos = new JSONArray();
		List<Produto> produtosList = psvc.getListaProduto();
		
		for (Produto p : produtosList) {
			JSONObject objProduto = new JSONObject();
			objProduto.put("idProduto", p.getIdProduto());
			objProduto.put("nomeProduto", p.getNomeProduto());
			produtos.put(objProduto);
		}
		
		
		return Response.ok(produtos).build();

	}
	
	@Produces({ MediaType.TEXT_PLAIN })
	@GET
	@Path("/getPerfis")
	public Response getListaPerfil() {

		JSONArray perfis = new JSONArray();
		List<Perfil> perfisList = perfilsvc.getListaPerfil();
		
		for (Perfil p : perfisList) {
			JSONObject objPerfil = new JSONObject();
			objPerfil.put("idPerfil", p.getIdPerfil());
			objPerfil.put("nomePerfil", p.getNomePerfil());
			perfis.put(objPerfil);
		}
		
		return Response.ok(perfis).build();

	}


	@Produces({ MediaType.TEXT_PLAIN })
	@GET
	@Path("/getAcreditacoesProduto")
	public Response getListaAcreditacoesProduto() {
		JSONArray acreditacoesProdutosJsonArray = new JSONArray();
		List<AcreditacaoProduto> acreditacaoProduto = apsvc.getListaAcreditacao();
		
		for (AcreditacaoProduto ap : acreditacaoProduto){
			JSONObject jsonObj = new JSONObject();
			jsonObj.put("codigoAcreditacao", ap.getCodigoAcreditacao());
			jsonObj.put("idPerfil", ap.getIdPerfil());
			jsonObj.put("idProduto", ap.getIdProduto());
			acreditacoesProdutosJsonArray.put(jsonObj);
		}
		
		return Response.ok(acreditacoesProdutosJsonArray).build();

	}
}
