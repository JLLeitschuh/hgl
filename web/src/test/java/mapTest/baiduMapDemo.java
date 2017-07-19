package mapTest;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class baiduMapDemo {

	private static final String BAIDU_APP_KEY = "42b8ececa9cd6fe72ae4cddd77c0da5d";

	/**
	 * 返回输入地址的经纬度坐标 key lng(经度),lat(纬度)
	 */
	public static Map<String, String> getLatitude(String address) {
		try {
			address = URLEncoder.encode(address, "UTF-8");
			
			URL resjson = new URL("http://api.map.baidu.com/geocoder?address="
					+ address + "&output=json&key=" + BAIDU_APP_KEY);
			BufferedReader in = new BufferedReader(new InputStreamReader(
					resjson.openStream()));
			String res;
			StringBuilder sb = new StringBuilder("");
			while ((res = in.readLine()) != null) {
				sb.append(res.trim());
			}
			in.close();
			String str = sb.toString();
			System.out.println("return json:" + str);
			if(str!=null&&!str.equals("")){
				Map<String, String> map = null;
				int lngStart = str.indexOf("lng\":");
				int lngEnd = str.indexOf(",\"lat");
				int latEnd = str.indexOf("},\"precise");
				if (lngStart > 0 && lngEnd > 0 && latEnd > 0) {
					String lng = str.substring(lngStart + 5, lngEnd);
					String lat = str.substring(lngEnd + 7, latEnd);
					map = new HashMap<String, String>();
					map.put("lng", lng);
					map.put("lat", lat);
					return map;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void main(String args[]) {

		/*Map<String, String> map = baiduMapDemo.getLatitude("吉林省辽源市东辽县 -争为竞争为竞争为竞争为竞争为竞争为竞争为竞争为竞争为竞争为竞争为竞争");
		if (null != map) {
			System.out.println(map.get("lng"));
			System.out.println(map.get("lat"));
		}*/
	}
}