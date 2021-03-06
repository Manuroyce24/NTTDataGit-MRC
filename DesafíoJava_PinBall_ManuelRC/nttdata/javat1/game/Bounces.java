package nttdata.javat1.game;

import java.util.concurrent.ThreadLocalRandom;

/**
 * 
 * Se define la clase rebotes
 * 
 */
public abstract class Bounces {

	private int number;

	protected Bounces() {

		this.number = ThreadLocalRandom.current().nextInt(1, 40);

	}

	protected int getNumber() {
		return number;
	}

	protected void setNumber(int number) {
		this.number = number;
	}

	@Override
	public String toString() {
		return "Rebotes: " + number;
	}

}
