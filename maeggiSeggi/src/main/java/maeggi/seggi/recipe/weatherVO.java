package maeggi.seggi.recipe;

public class weatherVO {
	String food_keyword;
	String weather_kind;
	
	public weatherVO() {
		
	}

	public weatherVO(String food_keyword, String weather_kind) {
		super();
		this.food_keyword = food_keyword;
		this.weather_kind = weather_kind;
	}

	public String getFood_keyword() {
		return food_keyword;
	}

	public void setFood_keyword(String food_keyword) {
		this.food_keyword = food_keyword;
	}

	public String getWeather_kind() {
		return weather_kind;
	}

	public void setWeather_kind(String weather_kind) {
		this.weather_kind = weather_kind;
	}

	
	
}
