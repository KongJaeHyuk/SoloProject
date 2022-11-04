package com.seoul.subway;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SubwayDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int insertSubway(SubwayDTO dto) {
		int result = -1;
		System.out.println("dao dto ==" + dto);
		result = sqlSession.insert("mapper.subway.insertSubway", dto);
		System.out.println("dao result ==" + result);
		return result;
	}
}
