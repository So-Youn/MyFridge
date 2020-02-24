package maeggi.seggi.mypage;

import java.sql.Date;

public class PointVO {
	String ID;
	String rule_name;
	int point;
	Date point_date;
	String member_id;
	
	public PointVO() {
		
	}

	public PointVO(String iD, String rule_name, int point, Date point_date, String member_id) {
		super();
		ID = iD;
		this.rule_name = rule_name;
		this.point = point;
		this.point_date = point_date;
		this.member_id = member_id;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getRule_name() {
		return rule_name;
	}

	public void setRule_name(String rule_name) {
		this.rule_name = rule_name;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public Date getPoint_date() {
		return point_date;
	}

	public void setPoint_date(Date point_date) {
		this.point_date = point_date;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	@Override
	public String toString() {
		return "PointVO [ID=" + ID + ", rule_name=" + rule_name + ", point=" + point + ", point_date=" + point_date
				+ ", member_id=" + member_id + "]";
	}

}
