package nttdata.javat1.game;

/**
 * 
 * Se define la clase bola
 * 
 */
public class Ball {

	private int weight;
	private String games;

	protected Ball() {

		// Se define una cantidad de partidas

		this.games = "Una";

	}

	protected int getWeight() {
		return weight;
	}

	protected void setWeight(int weight) {
		this.weight = weight;
	}

	protected String getGames() {
		return games;
	}

	protected void setGames(String games) {
		this.games = games;
	}

	@Override
	public String toString() {
		return "Partidas: " + games + "\n";
	}
}
