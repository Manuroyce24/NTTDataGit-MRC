package com.nttdata.services.interfaces;

import java.util.List;

import com.nttdata.persistence.entities.Client;
import com.nttdata.persistence.entities.Contract;

/**
 * Práctica Hibernate + Criteria
 * 
 * Clase Interfaz Servicios
 * 
 * @author ManuelRC
 *
 */
public interface GestionDualServiceI {

	/**
	 * Inserta un nuevo cliente.
	 * 
	 * @param newClient
	 */
	public void insertNewClient(final Client newClient);

	/**
	 * Actualiza un cliente existente.
	 * 
	 * @param updatedClient
	 */
	public void updateClient(final Client updatedClient);

	/**
	 * 
	 * @param deletedClient
	 */
	public void deleteClient(final Client deletedClient);

	/**
	 * Obtiene un cliente mediante su ID.
	 * 
	 * @param clientID
	 */
	public Client searchById(final Long clientID);

	/**
	 * Obtiene un client por su nombre completo.
	 * 
	 * @param name
	 * @return List<Client>
	 */
	public List<Client> searchByName(final String name);

	/**
	 * Obtiene todos los clientes existentes.
	 * 
	 * @return List<Client>
	 */
	public List<Client> searchAll();

	// Contrato
	public void insertNewContract(final Contract newContract);

	/**
	 * Actualiza un Contrato existente.
	 * 
	 * @param updatedContract
	 */

	public void updateContract(final Contract updateContract);

	/**
	 * Elimina un contrato existente.
	 * 
	 * @param deletedClient
	 */
	public void deleteContract(final Contract deleteContract);

	/**
	 * Obtiene un contrato mediante su ID.
	 * 
	 * @param clientID
	 */
	public Contract searchByContractId(final Long contractId);

	/**
	 * Obtiene todos los contratos existentes.
	 * 
	 * @return List<Client>
	 */
	public List<Contract> searchAllContract();

	public List<Client> searchByContractId(final String namePattern, final Long contractId);

}
