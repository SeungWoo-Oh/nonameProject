package noname.product.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import noname.common.dao.AbstractDAO;

@Repository("productDAO")
public class ProductDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String,Object> selectProductInfo(Map<String, Object> map) {
		return (Map<String, Object>)selectOne("product.selectProductInfo", map);
	}
	
	public int reviewTotalCount() {
		return (Integer) selectOne("product.reviewTotalCount");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> showReviewBoard(Map<String, Object> map) {
		return (List<Map<String, Object>>)selectList("product.reviewList", map);
	}
}
