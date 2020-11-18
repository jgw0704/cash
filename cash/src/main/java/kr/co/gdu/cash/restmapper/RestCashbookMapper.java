package kr.co.gdu.cash.restmapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RestCashbookMapper {
	public Map<String, Object> selectOutMoneyByMonth(int month); // 총 년도(18,19,20년도 합)의 월별 생활, 식비 카테고리 지출
	
	public Map<String, Object> selectInAndOutByMonth(int month); // 총 년도의 월별 수입/지출
	
	public Map<String, Object> selectCategoryOutByYear(int year); // 년도의 카테고리별 지츨
	
	public Map<String, Object> selectCategoryInByYear(); // 18, 19, 20년도 카테고리 수입
	
	public Map<String, Object> selectMonthInMoneyByYear(int year); // 년도별 용돈수입 확인
	
	public Map<String, Object> selectTotalCategoryByYear(int year);  // 년도의 카테고리별 수입 지출 
	
	public Map<String, Object> selectTotalOfInMoneyByYear(int year);  // 년도의 수입
	
	public Map<String, Object> selectTotalOutAndInByYear(int year);  // 년도의 수입/지출
	
	public Map<String, Object> selectTotalOfMonthByYear(int year);  // 년도의 지출
	
}
