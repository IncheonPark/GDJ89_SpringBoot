package com.winter.app.board.notice;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.winter.app.board.BoardVO;

import lombok.extern.slf4j.Slf4j;


@SpringBootTest
@Slf4j
class NoticeDAOTest {
	
	@Autowired
	private NoticeDAO noticeDAO;

//	@Test
//	void testGetList() throws Exception {
//		List<BoardVO> ar = noticeDAO.getList();
//		
//		for(BoardVO vo : ar) {
//			log.info("vo : {}", vo );
//		}
//		
//	}

	
	@Test
	void testGetDetail() throws Exception {
		BoardVO vo = new BoardVO();
		vo.setBoardNum(1L);
		vo = noticeDAO.getDetail(vo);
		log.info("vo : " + vo.getBoardDate());
	}

	
	@Test
	void testAdd() throws Exception {
		BoardVO vo = new BoardVO();
		vo.setBoardNum(1L);
		vo.setBoardTitle("title1");
		int result = noticeDAO.add(vo);
		log.info("result : " + result);
	}

}
