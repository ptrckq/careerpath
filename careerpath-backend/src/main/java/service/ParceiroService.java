package service;

import java.util.Date;

import javax.enterprise.context.RequestScoped;
import javax.enterprise.inject.Produces;

import org.json.JSONObject;

import dao.ParceiroDAO;
import model.Parceiro;

public class ParceiroService {

	ParceiroDAO parceiroDAO = new ParceiroDAO();

	Date date = new Date();

	@Produces
	@RequestScoped
	public void insereParceiro(Parceiro novoParceiro) throws Exception {
		Parceiro parceiro;
		parceiro = parceiroDAO.findById(novoParceiro.getCpfParceiro());

		try {
			if (parceiro == null) {
				novoParceiro.setDataAtualizacao(date);
				novoParceiro.setDataCadastro(date);
				parceiroDAO.insere(novoParceiro);
			} else {
				parceiro.setDataAtualizacao(date);
				parceiroDAO.update(parceiro);
			}
		} catch (Exception e) {
		}
	}

	public Parceiro criaParceiro(JSONObject pcoJson) {
		Parceiro parceiro = new Parceiro();
		parceiro.setCpfParceiro(pcoJson.getString("cpf"));
		parceiro.setCargo(pcoJson.getString("cargo"));
		parceiro.setEmail(pcoJson.getString("email"));
		parceiro.setTelefone(pcoJson.getString("telefone"));
		parceiro.setNomeCompleto(pcoJson.getString("nomeCompleto"));
		parceiro.setEmpresa(pcoJson.getString("empresa"));
		
		return parceiro;
	}
}
