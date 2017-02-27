package com.mysociety.member.DAO;

import java.util.List;

import com.mysociety.member.domain.Member;

public interface MemberDAO {
	public void addMember(Member memberObj);
	public void deleteMember(Member memberObj);
	public boolean updateMember(Member memberObj);
	public Member getMemberById(String memberId);
	public List<Member> getAllMember();
}
