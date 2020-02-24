package maeggi.seggi.restaurant;

import java.util.ArrayList;

public class RecipePlannerAddTVO {
	ArrayList<RecipePlannerAddVO> addlist;
	
	public RecipePlannerAddTVO() {
		
	}

	public RecipePlannerAddTVO(ArrayList<RecipePlannerAddVO> addlist) {
		super();
		this.addlist = addlist;
	}

	public ArrayList<RecipePlannerAddVO> getAddlist() {
		return addlist;
	}

	public void setAddlist(ArrayList<RecipePlannerAddVO> addlist) {
		this.addlist = addlist;
	}

	@Override
	public String toString() {
		return "RecipePlannerAddTVO [addlist=" + addlist + "]";
	}

	
}
