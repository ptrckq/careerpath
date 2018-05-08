package service;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.enterprise.inject.Produces;

import dao.PerfilDAO;
import model.Perfil;

public class PerfilService {
	PerfilDAO dao = new PerfilDAO();
	@Produces
	@RequestScoped
	
	
	public List<Perfil> getListaPerfil() {
		System.out.println(dao.getLista());
		return dao.getLista();
	}
}
