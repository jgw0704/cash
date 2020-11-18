package kr.co.gdu.cash.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.gdu.cash.mapper.CashbookMapper;
import kr.co.gdu.cash.vo.Cashbook;

@Service
@Transactional
public class CashbookService {
	@Autowired private CashbookMapper cashbookMapper;
	
	public List<Cashbook> getCashbookListAll() {
		return cashbookMapper.selectCashbookListAll();
	}
	
	public List<Cashbook> getCashbookListByPage(int currentPage, int rowPerPage) {
		Map<String, Object> map = new HashMap<>();
		map.put("beginRow", (currentPage-1)*rowPerPage);
		map.put("rowPerPage", rowPerPage);
		return cashbookMapper.selectCashbookListByPage(map);
	}
	
	public int deleteCashbook(int cashbookId) {
		return cashbookMapper.deleteCashbook(cashbookId);
	}
	
	public int updateCashbook(Cashbook cashbook) {
		System.out.println("Debug22" + cashbook);
		return cashbookMapper.updateCashbook(cashbook);
	}
	
	public Cashbook cashbookDay(int cashbookId) {
		return cashbookMapper.cashbookDay(cashbookId);
	}
	
	public int addCashbook(Cashbook cashbook) {
		return cashbookMapper.insertCashbook(cashbook);
	}
	
	public List<Cashbook> getCashbookListByDay(int currentYear, int currentMonth, int currentDay) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("currentYear", currentYear);
		map.put("currentMonth", currentMonth);
		map.put("currentDay", currentDay);
		return cashbookMapper.selectCashBookListByDay(map);
	}
	
	public List<Map<String, Object>> getCashListByMonth(int currentYear, int currentMonth) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("currentYear", currentYear);
		map.put("currentMonth", currentMonth);
		return cashbookMapper.selectCashListByMonth(map);
	}
	
	public int getSumCashbookPriceByInOut(String cashbookKind, int currentYear, int currentMonth) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cashbookKind", cashbookKind);
		map.put("currentYear", currentYear);
		map.put("currentMonth", currentMonth);
		Integer sum = cashbookMapper.selectSumCashbookPriceByInOut(map);
		return sum;
	}
}
