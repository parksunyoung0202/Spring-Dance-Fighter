package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.spring.entity.DancerVO;
import com.spring.entity.rankingVO;
import com.spring.entity.sabbingVO;

@Mapper
public interface DancerMapper {
	
	public void dancerInsert(DancerVO vo);

	public DancerVO dancerLogin(DancerVO vo);

	public List<sabbingVO> sabbingComments();

	public void commentInsert(sabbingVO vo);

	public List<rankingVO> sappingRank();

	public List<rankingVO> zerotwoRank();
}
