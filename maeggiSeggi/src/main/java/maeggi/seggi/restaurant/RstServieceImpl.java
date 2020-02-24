package maeggi.seggi.restaurant;
 
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class RstServieceImpl implements RstService{
	@Autowired
	RstDAO dao;
	
    public static StringBuilder sb;//
 
    static String getString(String input, String data) // API에서 필요한 문자 자르기.
    {
        String[] dataSplit = data.split("{" + input + "}");
        String[] dataSplit2 = dataSplit[1].split("\"" + input + "\"");
        return dataSplit2[0];
    }
    public  ArrayList<searchVO> main(String tit) {
    	ArrayList<searchVO> searchlist = new ArrayList<searchVO>();
    	String clientId = "kDO2KjxT2Tq2Qhbc0KQM";
        String clientSecret = "BRvEOByFGB";
        int display = 2;
 
        try {
            String text = URLEncoder.encode(tit, "utf-8");
            String apiURL = "https://openapi.naver.com/v1/search/local?query=" + text + "&display=" + display + "&";
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if (responseCode == 200) {
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            sb = new StringBuilder();
            String line;
 
            while ((line = br.readLine()) != null) {
                sb.append(line + "\n");
            }
 
            br.close();
            con.disconnect();
            System.out.println(sb); 
            String data = sb.toString();
            String[] array;
            array = data.split("\"");
            String[] title = new String[display];
            String[] link = new String[display];
            String[] category = new String[display];
            String[] description = new String[display];
            String[] telephone = new String[display];
            String[] address = new String[display];
            String[] mapx = new String[display];
            String[] mapy = new String[display];
            int k = 0;
            for (int i = 0; i < array.length; i++) {
                if (array[i].equals("title"))
                    title[k] = array[i + 2];
                if (array[i].equals("link"))
                    link[k] = array[i + 2];
                if (array[i].equals("category"))
                    category[k] = array[i + 2];
                if (array[i].equals("description"))
                    description[k] = array[i + 2];
                if (array[i].equals("telephone"))
                    telephone[k] = array[i + 2];
                if (array[i].equals("address"))
                    address[k] = array[i + 2];
                if (array[i].equals("mapx"))
                    mapx[k] = array[i + 2];
                if (array[i].equals("mapy")) {
                    mapy[k] = array[i + 2];
                    
                    searchVO SVO = new searchVO(title[k],link[k],category[k],description[k],telephone[k],address[k]);
                    searchlist.add(SVO);
                    k++;
                }
            }
            
            System.out.println(sb);
            System.out.println("----------------------------");
            System.out.println("첫번째 타이틀 : " + title[0]);
            System.out.println("두번째 타이틀 : " + title[1]);
        } catch (Exception e) {
            System.out.println(e);
        }
        return searchlist;
    }
	@Override
	public List<weatherVO> weathersearch(String today) {
		List<weatherVO> wlist = dao.weathersearch(today);
		return wlist;
	}
}
