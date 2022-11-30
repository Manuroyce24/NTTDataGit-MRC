package com.nttdata.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.Session;

import com.nttdata.persistence.dao.impl.ClientDaoImpl;
import com.nttdata.persistence.dao.impl.ContractDaoImpl;
import com.nttdata.persistence.dao.interfaces.ClientDaoI;
import com.nttdata.persistence.dao.interfaces.ContractDaoI;
import com.nttdata.persistence.entities.Client;
import com.nttdata.persistence.entities.Contract;
import com.nttdata.services.interfaces.GestionDualServiceI;

/**
 * Práctica Hibernate + Criteria
 * 
 * Clase Implementación Servicios
 * 
 * @author ManuelRC
 *
 */
public class GestionDualServiceImpl implements GestionDualServiceI {

	/** DAO: CLIENT */
	private ClientDaoI clientDao;

	public ClientDaoI getClientDao() {
		return clientDao;
	}

	public void setClientDao(ClientDaoI clientDao) {
		this.clientDao = clientDao;
	}

	/* Inyección DAO de t_contrato */
	private ContractDaoI contractDao;

	public void setContractDao(ContractDaoI contractDao) {
		this.contractDao = contractDao;
	}

	/**
	 * Metodo constructor.
	 */
	public GestionDualServiceImpl(final Session session) {
		this.clientDao = new ClientDaoImpl(session);
		this.contractDao = new ContractDaoImpl(session);
	}

	@Override
	public void insertNewClient(final Client newClient) {

		// Verificación de nulidad e inexistencia.
		if (newClient != null && newClient.getClientId() == null) {
			// Insercción del nuevo contrato.
			clientDao.insert(newClient);
		}
	}

	@Override
	public void updateClient(final Client updatedClient) {
		// Verificación de nulidad y existencia.
		if (updatedClient != null && updatedClient.getClientId() != null) {
			// Actualización del contrato.
			clientDao.update(updatedClient);
		}
	}

	@Override
	public void deleteClient(final Client deletedClient) {
		// Verificación de nulidad y existencia.
		if (deletedClient != null && deletedClient.getClientId() != null) {
			// Eliminación del contrato.
			clientDao.delete(deletedClient);
		}
	}

	@Override
	public Client searchById(final Long clientId) {
		// Resultado.
		Client client = null;
		// Verificación de nulidad.
		if (clientId != null) {
			// Obtención del contrato por ID.
			client = clientDao.searchById(clientId);
		}
		return client;
	}

	@Override
	public List<Client> searchByName(final String name) {

		// Resultado.
		List<Client> clientsList = new ArrayList<>();

		// Verificación de nulidad.
		if (StringUtils.isNotBlank(name)) {

			// Obtención del jugador por nombre.
			clientsList = clientDao.searchByName(name);
		}
		return clientsList;
	}

	@Override
	public List<Client> searchAll() {
		// Resultado.
		List<Client> clientList;
		// Obtención de contratos.
		clientList = clientDao.searchAll();
		return clientList;
	}

	@Override
	public List<Client> searchByContractId(String namePattern, Long contractId) {

		// Resultado.
		List<Client> clientList;
		// Obtención de jugadores.
		clientList = clientDao.searchByNameAndContractId(namePattern, contractId);
		return clientList;
	}

	@Override
	public void insertNewContract(final Contract newContract) {

		// Verificación de nulidad e inexistencia.
		if (newContract != null && newContract.getContractId() == null) {
			// Insercción del nuevo contrato.
			contractDao.insert(newContract);
		}
	}

	@Override
	public void updateContract(final Contract updateContract) {
		// Verificación de nulidad y existencia.
		if (updateContract != null && updateContract.getContractId() != null) {
			// Actualización del contrato.
			contractDao.update(updateContract);
		}
	}

	@Override
	public void deleteContract(Contract deleteContract) {
		// Verificación de nulidad y existencia.
		if (deleteContract != null && deleteContract.getContractId() != null) {
			// Eliminación del contrato.
			contractDao.delete(deleteContract);
		}
	}

	@Override
	public Contract searchByContractId(final Long contractId) {
		// Resultado.
		Contract contract = null;
		// Verificación de nulidad.
		if (contractId != null) {
			// Obtención del contrato por ID.
			contract = contractDao.searchById(contractId);
		}
		return contract;
	}

	@Override
	public List<Contract> searchAllContract() {
		// Resultado.
		List<Contract> contractList;

		// Obtención de contratos.
		contractList = contractDao.searchAll();

		return contractList;
	}

}