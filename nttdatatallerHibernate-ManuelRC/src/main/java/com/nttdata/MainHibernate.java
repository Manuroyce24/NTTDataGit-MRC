package com.nttdata;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.nttdata.persistence.entities.Client;
import com.nttdata.persistence.entities.Contract;
import com.nttdata.services.impl.GestionDualServiceImpl;
import com.nttdata.services.interfaces.GestionDualServiceI;

/**
 * Práctica Hibernate + Criteria
 * 
 * Clase Main
 * 
 * @author ManuelRC
 *
 */
public class MainHibernate {

	/**
	 * Método principal
	 * 
	 * @param args
	 */
	public static void main(String[] args) {

		// Llamada al Logger
		Logger logger = LoggerFactory.getLogger(MainHibernate.class);

		// Apertura de sesión.
		final Session session = NTTDataHibernateUtil.getSessionFactory().openSession();

		// Inyección de servicio.
		final GestionDualServiceI dualService = new GestionDualServiceImpl(session);
		final String updatedUser = "ManuRC";
		final Date updatedDate = new Date();

		// Generación de cliente1.
		final Client client1 = new Client();
		client1.setDNI("12345678J");
		client1.setName("Juan");
		client1.setSurname1("Cruz");
		client1.setSurname2("Raya");
		client1.setUpdatedDate(updatedDate);
		client1.setUpdatedUser(updatedUser);

		// Generación de cliente2.
		final Client client2 = new Client();
		client2.setDNI("12345678P");
		client2.setName("Paqui");
		client2.setSurname1("Santos");
		client2.setSurname2("Aveira");
		client2.setUpdatedDate(updatedDate);
		client2.setUpdatedUser(updatedUser);

		// Generación de contrato1.
		final Contract contract1 = new Contract();
		contract1.setName("NTT Data");
		contract1.setDvig("16/02/2022");
		contract1.setDcad("16/02/2023");
		contract1.setPrice(19500.66);// Buen sueldo de Junior en FRONT no?
		contract1.setUpdatedUser(updatedUser);
		contract1.setUpdatedDate(updatedDate);

		// Asignacion del cliente al contrato
		client1.setContract(contract1);
		client2.setContract(contract1);

		// Alta de cliente.
		dualService.insertNewContract(contract1);
		dualService.insertNewClient(client1);
		dualService.insertNewClient(client2);

		// Valor 0 en contrato, porque detecta el contrato como array
		List<Client> clients = dualService.searchByContractId("j%", 0L);

		// Imprime Nombre completo del cliente, nombre del contrato e ID Contrato
		for (final Client client : clients) {
			// Uso de logger
			logger.info((client.getName() + " | " + client.getSurname1() + " | " + client.getSurname2() + " | "
					+ client.getContract().getName() + " | " + client.getContract().getContractId()));
		}

		// Cierre de sesión.
		session.close();

	}
}
