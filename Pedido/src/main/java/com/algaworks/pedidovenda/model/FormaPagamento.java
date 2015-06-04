package com.algaworks.pedidovenda.model;

public enum FormaPagamento {

	DINHEIRO("Dinheiro"), 
	CARTAO_CREDITO("Cartão de Credito"), 
	CARTAO_DEBITO("Cartão de Debito"), 
	CHEQUE("Cheque"), 
	BOLETO_BANCARIO("Boleto Bancário"), 
	DEPOSITO_BANCARIO("Deposito Bancário");

	private String descricao;

	FormaPagamento(String descricao) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}


}