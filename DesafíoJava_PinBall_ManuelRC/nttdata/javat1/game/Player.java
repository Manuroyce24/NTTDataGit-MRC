package nttdata.javat1.game;

/**
 * 
 * Se define la clase Jugador
 * 
 */
public class Player {

	private String name;

	protected Player() {

		// Se define un nombre para el jugador

		this.name = "Manu";

	}

	protected String getName() {
		return name;
	}

	protected void setname(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Jugador: " + name + "\n";
	}
}
