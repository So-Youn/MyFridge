package maeggi.seggi.fridge;

import java.util.ArrayList;

public class FridgeDetailListVO {
	private ArrayList<FridgeDetailVO> detailList;
	
	public FridgeDetailListVO() {
		// TODO Auto-generated constructor stub
	}

	public FridgeDetailListVO(ArrayList<FridgeDetailVO> detailList) {
		super();
		this.detailList = detailList;
	}

	public ArrayList<FridgeDetailVO> getDetailList() {
		return detailList;
	}

	public void setDetailList(ArrayList<FridgeDetailVO> detailList) {
		this.detailList = detailList;
	}

	@Override
	public String toString() {
		return "FridgeDetailListVO [detailList=" + detailList + "]";
	}
	
	
}
