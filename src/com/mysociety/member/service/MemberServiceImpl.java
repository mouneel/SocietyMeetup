package com.mysociety.member.service;

import java.util.List;

import org.apache.log4j.Logger;

import com.mysociety.common.LoggerUtil;
import com.mysociety.member.domain.Member;

public class MemberServiceImpl implements MemberService {

	private static Logger logger = LoggerUtil.getInstance().getLogger();
	
	@Override
	public boolean createMember(Member memberObj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateMember(Member memberObj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteMember(Member memberObj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Member getMemberById(String memberId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Member> getAllMembers() {
		// TODO Auto-generated method stub
		return null;
	}

}
