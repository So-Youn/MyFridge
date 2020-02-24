package maeggi.seggi.restaurant;

public class weatherVO {
	String food_keyword;
	String weather_id;
	
	public weatherVO() {
		
	}

	public weatherVO(String food_keyword, String weather_id) {
		super();
		this.food_keyword = food_keyword;
		this.weather_id = weather_id;
	}

	public String getFood_keyword() {
		return food_keyword;
	}

	public void setFood_keyword(String food_keyword) {
		this.food_keyword = food_keyword;
	}

	public String getWeather_id() {
		return weather_id;
	}

	public void setWeather_id(String weather_id) {
		this.weather_id = weather_id;
	}

	@Override
	public String toString() {
		return "weatherVO [food_keyword=" + food_keyword + ", weather_id=" + weather_id + "]";
	}
	
}
