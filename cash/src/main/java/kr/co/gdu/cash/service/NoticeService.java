package kr.co.gdu.cash.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.gdu.cash.mapper.CashbookMapper;
import kr.co.gdu.cash.mapper.NoticeMapper;
import kr.co.gdu.cash.vo.Notice;

@Service 
@Transactional
public class NoticeService {
	@Autowired private NoticeMapper noticeMapper;
	@Autowired private CashbookMapper cashbookMapper;
	
	public Notice getNoticeOne(int noticeId) {
		return noticeMapper.selectNoticeOne(noticeId);
	}
	
	public List<Notice> getNoticeListByPage(int currentPage, int rowPerPage) {
		Map<String, Object> map = new HashMap<>();
		map.put("beginRow", (currentPage-1)*rowPerPage);
		map.put("rowPerPage", rowPerPage);
		return noticeMapper.selectNoticeListByPage(map);
	}
	
	public Map<String, Object> getNoticeAndInOutList() { 
		List<Notice> noticeList = noticeMapper.selectLatestNoiceList();
		List<Map<String, Object>> inOutList = cashbookMapper.selectCashInOutList();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("noticeList", noticeList);
		map.put("inOutList", inOutList);
		return map;
	}
	
	public List<Notice> getNoticeList() {
		return noticeMapper.selectLatestNoiceList();
	}
}