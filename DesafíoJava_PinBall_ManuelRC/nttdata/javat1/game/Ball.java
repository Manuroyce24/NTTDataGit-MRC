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

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getGames() {
		return games;
	}

	public void setGames(String games) {
		this.games = games;
	}

	@Override
	public String toString() {
		return "Partidas: " + games + "\n";
	}
}
