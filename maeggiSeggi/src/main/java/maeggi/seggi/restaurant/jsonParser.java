package maeggi.seggi.restaurant;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class jsonParser {
	public static void main(String[] args) {
		try {
			String nx = "1"; // 
			String ny = "1"; // 
			String baseDate = "20200213"; 
			String baseTime = "0500"; 
			String serviceKey = "bFLjSVwZpB%2BomeIbURaEI3jRNcEQ9j9jhqNnd2bDYYvybfq8qGRrA5zrU19E1b2w7TVtaw%2FZ%2BJhA5wZYDewN3g%3D%3D";
			String urlStr = "http://apis.data.go.kr/1360000/VilageFcstInfoService/getVilageFcst?" + "serviceKey="
					+ serviceKey + "&numOfRows=10&pageNo=1&base_date=" + baseDate + "&base_time=" + baseTime + "&nx="
					+ nx + "&ny=" + ny + "&dataType=JSON";
			URL url = new URL(urlStr);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
			System.out.println("Response code: " + conn.getResponseCode());
			
			BufferedReader bf;
			String line = "";
			String result = "";
			
			bf = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			while ((line = bf.readLine()) != null) {
				result = result.concat(line);
				System.out.println(result);
			}
			JSONParser parser = new JSONParser();
			JSONObject obj = (JSONObject) parser.parse(result); 
			JSONObject parse_response = (JSONObject) obj.get("response");
			JSONObject parse_body = (JSONObject) parse_response.get("body");
			JSONObject parse_items = (JSONObject) parse_body.get("items");
			JSONArray parse_item = (JSONArray) parse_items.get("item");
			String category="";
			JSONObject weather;
			for (int i = 0; i < parse_item.size(); i++) {
				weather = (JSONObject) parse_item.get(i);
				String fcst_Value = ((String) weather.get("fcstValue"));
				category = (String) weather.get("category");
				System.out.print(i + "번째");
				System.out.print(" category : " + category);
				System.out.print(" fcst_Value : " + fcst_Value);
				System.out.println();
			}
			bf.close();
			conn.disconnect();
	        //System.out.println(result.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}