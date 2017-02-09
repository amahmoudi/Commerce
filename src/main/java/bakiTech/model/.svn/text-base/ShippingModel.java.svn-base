package bakiTech.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import dao.domain.CitiesDao;
import dao.tables.Category;
import dao.tables.Cities;

public class ShippingModel implements Serializable {
	
	List<String> cities = new ArrayList<String>();
	CitiesDao dao=new CitiesDao();
	
	public ShippingModel(){
		
	}
			
	public List<String> getCities() {
		return cities;
	}

	public void setCities(List<String> cities) {
		this.cities = cities;
	}

	public String display(){
		cities.add("Location");
		Iterator<Cities> iterator = dao.showCities().iterator();
		while(iterator.hasNext()) {
			Cities city = (Cities) iterator.next();
			String cityName=city.getCityName();
			cities.add(cityName);
		}
		return "display";
	}

}