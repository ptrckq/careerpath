package service;

import java.util.Date;

import javax.enterprise.context.RequestScoped;
import javax.enterprise.inject.Produces;
import javax.inject.Inject;

import dao.RelatorioDAO;
import model.Relatorio;

public class RelatorioService {
	
	
	@Inject
	RelatorioDAO relatorioDAO;
	
	Date date = new Date();
	
	@Produces
	@RequestScoped
	public void insereRelatorio(Relatorio novoRelatorio) {
		
	}
	

}
