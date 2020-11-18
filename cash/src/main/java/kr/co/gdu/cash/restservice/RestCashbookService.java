package kr.co.gdu.cash.restservice;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.gdu.cash.restmapper.RestCashbookMapper;

@Service
@Transactional
public class RestCashbookService {
	@Autowired RestCashbookMapper restCashbookMapper;
	
	public Map<String, Object> getInAndOutByMonth(int month) { // 총 년도의 월별 수입/지출
		return restCashbookMapper.selectInAndOutByMonth(month);
	}
	
	
	public Map<String, Object> getCategoryOutByYear(int year) { // 년도의 카테고리별 지츨
		return restCashbookMapper.selectCategoryOutByYear(year);
	}
	
	public Map<String, Object> getCategoryInByYear() { // 18, 19, 20년도 카테고리 수입
		return restCashbookMapper.selectCategoryInByYear();
	}
	
	public Map<String, Object> getMonthInMoneyByYear(int year) { // 년도별 용돈수입 확인
		return restCashbookMapper.selectMonthInMoneyByYear(year);
	}
	
	public Map<String, Object> getTotalCategoryByYear(int year) {  // 년도의 카테고리별 수입 지출 
		return restCashbookMapper.selectTotalCategoryByYear(year);
	}
	
	public Map<String, Object> getTotalOfInMoneyByYear(int year) {  // 년도의 수입
		return restCashbookMapper.selectTotalOfInMoneyByYear(year);
	}
	
	public Map<String, Object> getTotalOutAndInByYear(int year) {  // 년도의 수입/지출
		return restCashbookMapper.selectTotalOutAndInByYear(year);
	}
	
	public Map<String, Object> getTotalOfMonthByYear (int year) {  // 년도의 지출
		return restCashbookMapper.selectTotalOfMonthByYear(year);
	}
}
