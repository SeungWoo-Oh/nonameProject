package noname.product.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import noname.common.common.CommandMap;
import noname.product.service.ProductService;

@Controller
public class ProductController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="productService")
	private ProductService productService;
	
	/*상품 상세정보 JSP 호출함수*/
	@RequestMapping(value="/openProductInfo.do")
	public ModelAndView openProductPage(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("product/product_Info");
		return mv;
	}
	
	/*상품 상세정보 출력*/
	@RequestMapping(value="/showProductInfo.do")
	public ModelAndView showProductInfo(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("jsonView");
		
		Map<String, Object> productInfo = productService.selectProductInfo(commandMap.getMap());
		mv.addObject("productInfo", productInfo);
		
		return mv;
	}
	
	/*이용후기 출력*/
	@RequestMapping(value="/showReviewBoard.do")
	public ModelAndView showReviewBoard(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("jsonView");
		Map<String, Object> reviewMap = productService.showReviewBoard(commandMap.getMap());
		mv.addObject("reviewMap", reviewMap);

		return mv;
	}
	
	
	/*============= BYOUNGSOO =============*/
	/*Product List*/
	@RequestMapping(value="/showProductList.do")
	public ModelAndView showProductList(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("product/product_list");
		
		List<Map<String, Object>> productListMap = productService.showProductList(commandMap.getMap());
		
		mv.addObject("productListMap", productListMap);
		
		return mv;
	}
	
	
}
