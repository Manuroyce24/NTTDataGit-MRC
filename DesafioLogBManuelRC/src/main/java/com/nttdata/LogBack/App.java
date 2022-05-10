package com.nttdata.LogBack;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 
 * Clase principal.
 * 
 * @author Manu
 *
 */

public class App {

	/** LOGGER */

	private static final Logger logger = LoggerFactory.getLogger(App.class);

	/**
	 * 
	 * Usamos logger.
	 * 
	 * @param args
	 * 
	 */

	public static void main(String[] args) {

		// Realiza un bucle para que se cree un archivo que se pueda dividir

		int contador = 0;

		do {
			logger.info("Málaga \"la bombonera\"\r\n" + "flor de la costa del sol\r\n" + "tiene equipo de primera\r\n"
					+ "en el fútbol español {}. {}", contador, App.class.getSimpleName());
			contador++;
		} while (contador < 100000);
	}
}
