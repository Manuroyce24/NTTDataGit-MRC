package nttdata.javat1.game;

/**
 * 
 * Se define la clase Jugador
 * 
 */
public class Player {

	private String nombre;

	protected Player() {

		// Se define un nombre para el jugador

		this.nombre = "Manu";

	}

	protected String getNombre() {
		return nombre;
	}

	protected void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@Override
	public String toString() {
		return "Jugador: " + nombre + "\n";
	}
}
