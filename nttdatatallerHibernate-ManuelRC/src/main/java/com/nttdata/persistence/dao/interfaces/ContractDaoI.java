package com.nttdata.persistence.dao.interfaces;

import com.nttdata.persistence.entities.Contract;

/**
 * Práctica Hibernate + Criteria
 * 
 * Clase Interfaz ContractDao
 * 
 * @author ManuelRC
 *
 */
public interface ContractDaoI extends CommonDaoI<Contract> {

	/**
	 * Obtiene contratos por nombre.
	 * 
	 * @param name
	 * @return List<Contract>
	 */
	public Contract searchByContract(final String contract);
}
