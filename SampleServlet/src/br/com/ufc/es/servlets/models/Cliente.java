package br.com.ufc.es.servlets.models;

import java.io.Serializable;
import java.util.Date;

public class Cliente implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1141337133468367332L;
	
	private int id;
	private String nome;
	private String email;
	private Date dataNascimento;
	private String nomeMae;
	private String nomePai;
	private String endereco;
	private String bairro;
	private String complemento;
	private double CPF;
	private double CEP;

}
