package kr.co.gdu.cash.restcontroller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import kr.co.gdu.cash.restservice.RestCashbookService;

@RestController
public class RestCashbookController {
	@Autowired RestCashbookService restCashbookService;
	@GetMapping("/inAndOutByMonth/{month}")
	public Map<String, Object> InAndOutByMonth(@PathVariable(name = "month") int month) { // 총 년도의 월별 수입/지출
		return restCashbookService.getInAndOutByMonth(month);
	}
	
	@GetMapping("/categoryOutByYear/{year}")
	public Map<String, Object> categoryOutByYear(@PathVariable(name = "year") int year) { // 년도의 카테고리별 지출
		return restCashbookService.getCategoryOutByYear(year);
	}
	
	@GetMapping("/categoryInByYear")
	public Map<String, Object> categoryInByYear() { // // 18, 19, 20년도 카테고리 수입
		Map<String, Object> map = restCashbookService.getCategoryInByYear();
		return map; 
	}
	
	@GetMapping("/monthInMoneyByYear/{year}")
	public Map<String, Object> monthInMoneyByYear(@PathVariable(name = "year") int year) { // 년도별 용돈수입 확인
		return restCashbookService.getMonthInMoneyByYear(year);
	}
	
	@GetMapping("/totalCategoryByYear/{year}")
	public Map<String, Object> totalCategoryByYear(@PathVariable(name = "year") int year) { // 년도의 카테고리별 수입 지출
		return restCashbookService.getTotalCategoryByYear(year);
	}
	
	@GetMapping("/totalOfInMoneyByYear/{year}")
	public Map<String, Object> totalOfInMoneyByYear(@PathVariable(name = "year") int year) { // 년도의 수입
		return restCashbookService.getTotalOfInMoneyByYear(year);
	}
	
	@GetMapping("/totalOutAndInByYear/{year}")
	public Map<String, Object> totalOutAndInByYear(@PathVariable(name = "year") int year) { // 년도의 수입/지출
		return restCashbookService.getTotalOutAndInByYear(year);
	}
	
	@GetMapping("/totalOfMonthByYear/{year}")
	public Map<String, Object> totalOfMonthByYear(@PathVariable(name = "year") int year) { // 년도의 지출
		return restCashbookService.getTotalOfMonthByYear(year); 
	}
}
