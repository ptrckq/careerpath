package webservice;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.HttpHeaders;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.json.JSONObject;

import model.Parceiro;
import service.ParceiroService;

@Path("/parceiro")
public class ParceiroRest {

	ParceiroService psvc = new ParceiroService();
	
	@POST
	@Path("/insert")
	@Consumes({ MediaType.APPLICATION_JSON })
	public Response persistPartner(String parceiroRaw) throws Exception {
		JSONObject parceiroJson = new JSONObject(parceiroRaw);
		
		
		Parceiro parceiro = psvc.criaParceiro(parceiroJson);
		psvc.insereParceiro(parceiro);
		
		return Response.ok(parceiroRaw).header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON).build();

	}
}
