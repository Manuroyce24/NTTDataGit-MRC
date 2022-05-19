package nttdata.javat1.game;

import java.util.concurrent.ThreadLocalRandom;

/**
 * 
 * Se define la clase Puntuacion
 * 
 */
public class Score extends Bounces {

	private int points;

	/**
	 * 
	 * Se crea un contructor para utilizar los puntos segun los rebotes
	 * 
	 */
	protected Score() {

		super();
		this.points = setPoints(super.getNumber());

	}

	protected int getPoints() {
		return points;
	}

	/**
	 * 
	 * Utiliza un set modificado para asignar una puntuacion predefinida en unos
	 * rangos segun los rebotes
	 * 
	 */

	protected int setPoints(int number) {

		switch (number) {
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
			return ThreadLocalRandom.current().nextInt(10, 25);
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
			return ThreadLocalRandom.current().nextInt(25, 40);
		case 11:
		case 12:
		case 13:
		case 14:
		case 15:
			return ThreadLocalRandom.current().nextInt(40, 55);
		case 16:
		case 17:
		case 18:
		case 19:
		case 20:
			return ThreadLocalRandom.current().nextInt(55, 70);
		case 21:
		case 22:
		case 23:
		case 24:
		case 25:
			return ThreadLocalRandom.current().nextInt(70, 85);
		case 26:
		case 27:
		case 28:
		case 29:
		case 30:
			return ThreadLocalRandom.current().nextInt(85, 100);
		case 31:
		case 32:
		case 33:
		case 34:
		case 35:
			return ThreadLocalRandom.current().nextInt(100, 150);
		case 36:
		case 37:
		case 38:
		case 39:
		case 40:
			return ThreadLocalRandom.current().nextInt(150, 200);
		default:
			return 0;
		}

	}

	@Override
	public String toString() {

		// Imprimimos el 'toString' de bounces con los puntos

		return super.toString() + "\n" + "Puntuacion: " + points;// Imprimimos el 'toString' de bounces con los puntos
	}

}
