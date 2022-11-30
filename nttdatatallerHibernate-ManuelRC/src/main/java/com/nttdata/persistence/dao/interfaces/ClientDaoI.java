package com.nttdata.persistence.dao.interfaces;

import java.util.List;

import com.nttdata.persistence.entities.Client;

/**
 * Práctica Hibernate + Criteria
 * 
 * Clase Interfaz ClienteDao
 * 
 * @author ManuelRC
 *
 */

public interface ClientDaoI extends CommonDaoI<Client> {

	// MÉTODOS CONCRETOS DE LA TABLA

	/**
	 * Obtiene clientes por nombre.
	 * 
	 * @param name
	 * @return List<Client>
	 */
	public List<Client> searchByName(final String name);

	/**
	 * Obtiene Clientes por nombre y Contrato.
	 * 
	 * @param namePattern
	 * @param contractId
	 * @return List<Client>
	 */
	public List<Client> searchByNameAndContractId(final String namePattern, final Long contractId);

}
