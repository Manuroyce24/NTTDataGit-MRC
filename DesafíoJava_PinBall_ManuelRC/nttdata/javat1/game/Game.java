package nttdata.javat1.game;

import java.util.concurrent.ThreadLocalRandom;

/**
 * 
 * Se llaman a las clases creadas para definir el jugador, los rebotes y la
 * puntuacion
 * 
 */
public class Game {

	public void launchAndStart(String[] args) {

		// Se introduce la moneda
		final int coin = ThreadLocalRandom.current().nextInt(0, 2);

		// Variable del jugador
		final Player player = new Player();

		// Variable donde se crea la bola
		final Ball games = new Ball();

		// Variable de puntuacion
		final Score score = new Score();

		// Segun la cantidad de monedas se inicia el juego o no
		if (coin > 0) {

			System.out.println(player + "" + games + score);

		} else {

			System.out.println("Dinero insuficiente");

		}
	}
}
