package br.com.fitrank.modelo;


/** Entity(name="configuracao")
 *
 */
public class Configuracao {
//	Column(name="id_configuracao", Primary Key)
	private int idConfiguracao;
//	Column(name="modalidade")
	private String modalidade;
//	Column(name="modo")
	private String modo;	
//	Column(name="dia_noite")
	private String diaNoite;
//	Column(name="intervalo_data")
	private String intervaloData;
//	Column(name="favorito")
	private boolean favorito;
//	Column(name="padrao_modalidade")
	private boolean padraoModalidade;
//	Column(name="id_pessoa", FK="FK1_PESSOA_CONF")
	private String idPessoa;
	
	public int getIdConfiguracao() {
		return idConfiguracao;
	}
	public void setIdConfiguracao(int idConfiguracao) {
		this.idConfiguracao = idConfiguracao;
	}
	public String getModalidade() {
		return modalidade;
	}
	public void setModalidade(String modalidade) {
		this.modalidade = modalidade;
	}
	public String getModo() {
		return modo;
	}
	public void setModo(String modo) {
		this.modo = modo;
	}
	public String getDiaNoite() {
		return diaNoite;
	}
	public void setDiaNoite(String diaNoite) {
		this.diaNoite = diaNoite;
	}
	public String getIntervaloData() {
		return intervaloData;
	}
	public void setIntervaloData(String intervaloData) {
		this.intervaloData = intervaloData;
	}
	public boolean isFavorito() {
		return favorito;
	}
	public void setFavorito(boolean favorito) {
		this.favorito = favorito;
	}
	public boolean isPadraoModalidade() {
		return padraoModalidade;
	}
	public void setPadraoModalidade(boolean padraoModalidade) {
		this.padraoModalidade = padraoModalidade;
	}
	public String getIdPessoa() {
		return idPessoa;
	}
	public void setIdPessoa(String idPessoa) {
		this.idPessoa = idPessoa;
	}
}
