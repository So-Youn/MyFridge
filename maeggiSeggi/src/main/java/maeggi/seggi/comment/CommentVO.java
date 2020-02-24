package maeggi.seggi.comment;

import java.sql.Date;
public class CommentVO {
	int com_no;
	int board_no;
	String com_content;
	Date com_regdate;
	String member_id;
	public CommentVO() {
	}
	public CommentVO(int com_no, int board_no, String com_content, Date com_regdate, String member_id) {
		super();
		this.com_no = com_no;
		this.board_no = board_no;
		this.com_content = com_content;
		this.com_regdate = com_regdate;
		this.member_id = member_id;
	}
	public int getCom_no() {
		return com_no;
	}
	public void setCom_no(int com_no) {
		this.com_no = com_no;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public String getCom_content() {
		return com_content;
	}
	public void setCom_content(String com_content) {
		this.com_content = com_content;
	}
	public Date getCom_regdate() {
		return com_regdate;
	}
	public void setCom_regdate(Date com_regdate) {
		this.com_regdate = com_regdate;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	@Override
	public String toString() {
		return "CommentVO [com_no=" + com_no + ", board_no=" + board_no + ", com_content=" + com_content
				+ ", com_regdate=" + com_regdate + ", member_id=" + member_id + "]";
	}
	
}