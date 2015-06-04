package com.algaworks.pedidovenda.service;

import java.io.Serializable;

import javax.inject.Inject;

import com.algaworks.pedidovenda.model.Produto;
import com.algaworks.pedidovenda.repository.Produtos;
import com.algaworks.pedidovenda.util.jpa.Transactional;

public class CadastroProdutoService implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Inject
	private Produtos produtos;
	
	
	@Transactional
	public Produto salvar(Produto produto){
		Produto produtoExistente = produtos.porSKU(produto.getSku());
		if(produtoExistente != null && !produtoExistente.equals(produto)){
			throw new NegocioException("Ja existe esse produto com sku");
		}
		
		return produtos.guardar(produto);
	}
	

}
