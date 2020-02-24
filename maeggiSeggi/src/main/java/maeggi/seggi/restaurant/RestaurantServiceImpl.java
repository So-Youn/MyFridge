package maeggi.seggi.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RestaurantServiceImpl implements RestaurantService {
	@Autowired
	RestaurantDAO dao;
	@Override
	public int insert(RecipePlannerAddVO add) {
		return dao.insert(add);
	}

}
