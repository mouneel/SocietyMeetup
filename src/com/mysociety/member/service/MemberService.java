package com.mysociety.member.service;

import java.util.List;

import com.mysociety.member.domain.Member;

public interface MemberService {
	public boolean createMember(Member memberObj);
	public boolean updateMember(Member memberObj);
	public boolean deleteMember(Member memberObj);
	
	public Member getMemberById(String memberId);
	public List<Member> getAllMembers();
}
