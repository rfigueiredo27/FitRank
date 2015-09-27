package br.com.fitrank.service;

import java.sql.SQLException;

import br.com.fitrank.modelo.Configuracao;
import br.com.fitrank.persistencia.ConfiguracaoDAO;
import br.com.fitrank.util.StringUtil;

public class ConfiguracaoServico {
	
	ConfiguracaoDAO configuracaoDAO;
	Configuracao configuracao;
	
	public Configuracao leConfiguracaoFavorita(String idPessoa){
		
		this.configuracaoDAO = new ConfiguracaoDAO();
		
		if(!StringUtil.isEmptyOrNull(idPessoa)){
			configuracao = new Configuracao();
			configuracao.setIdPessoa(idPessoa);
			
			try {
				configuracao = configuracaoDAO.leConfiguracaoPorPessoa(configuracao, true, false);
			} catch (SQLException e) {
				e.printStackTrace();
				return null;
			}
		}
		
		return configuracao;
	}
	
	public Configuracao leConfiguracaoPadraoModalidade(String idPessoa, String modalidade){
		
		this.configuracaoDAO = new ConfiguracaoDAO();
		
		if(!StringUtil.isEmptyOrNull(idPessoa)){
			configuracao = new Configuracao();
			configuracao.setIdPessoa(idPessoa);
			configuracao.setModalidade(modalidade);
			
			try {
				configuracao = configuracaoDAO.leConfiguracaoPorPessoa(configuracao, false, true);
			} catch (SQLException e) {
				e.printStackTrace();
				return null;
			}
		}
		
		return configuracao;
	}
	
	public Configuracao adicionaConfiguracao(Configuracao configuracao){
		
		this.configuracaoDAO = new ConfiguracaoDAO();

		try {
			configuracao = configuracaoDAO.adicionaConfiguracao(configuracao);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
		
		return configuracao;
	}
	
	public Configuracao atualizaConfiguracao(Configuracao configuracao){
		
		this.configuracaoDAO = new ConfiguracaoDAO();

		try {
			configuracao = configuracaoDAO.atualizaConfiguracao(configuracao);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
		
		return configuracao;
	}
}
