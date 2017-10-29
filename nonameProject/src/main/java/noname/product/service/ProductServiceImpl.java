package noname.product.service;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import noname.common.object.BoardPaging;
import noname.product.dao.ProductDAO;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	
	@Resource(name="productDAO")
	private ProductDAO productDAO;

	@Override
	public Map<String, Object> selectProductInfo(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return productDAO.selectProductInfo(map);
	}

	@Override
	public Map<String, Object> showReviewBoard(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		int reviewTotalCount = productDAO.reviewTotalCount();
		int currentPage = Integer.valueOf((String) map.get("currentPage"));
		BoardPaging paging = new BoardPaging();
		
		map = paging.PagingMethod(currentPage, reviewTotalCount);
		map.put("reviewList", productDAO.showReviewBoard(map));
		map.put("currentPage", currentPage);
		
		return map;
	}
	
	
	/*============= BYOUNGSOO =============*/
	/*Product List*/
	@Override
	public List<Map<String, Object>> showProductList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		return productDAO.showProductList(map);
	}
	



}
