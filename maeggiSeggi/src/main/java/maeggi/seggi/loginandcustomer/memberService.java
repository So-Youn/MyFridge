package maeggi.seggi.loginandcustomer;

import java.util.ArrayList;
import java.util.List;

public interface memberService {
	ArrayList<memberVO> getTreeEmpList(String deptno);
	//int insert(memberVO user,MultipartFile file,String realpath,String filename);
	int insert(memberVO user);
	boolean idCheck(String id);
	ArrayList<memberVO> getMemberList();
	int delete(String id);
	memberVO read(String id);
	ArrayList<memberVO> search(String column, String search, String pass);
	int update(memberVO user);
	memberVO login(memberVO loginUser);
	List<memberVO> admin_memberview();//관리자가 회원 전체보기
	int admin_memberdelete(memberVO member_id);





}