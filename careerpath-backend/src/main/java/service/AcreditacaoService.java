package service;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.ws.rs.Produces;

import dao.AcreditacaoDAO;
import model.Acreditacao;

public class AcreditacaoService {
	AcreditacaoDAO dao = new AcreditacaoDAO();
	
	
	@Produces
	@RequestScoped
	public List<Acreditacao> getListaAcreditacao() {
		System.out.println(dao.getLista());
		return dao.getLista();
	}
}
