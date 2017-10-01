package noname.product.service;

import java.util.List;
import java.util.Map;

public interface ProductService {
	Map<String, Object> selectProductInfo(Map<String, Object> map) throws Exception;
	Map<String, Object> showReviewBoard(Map<String, Object> map) throws Exception;
}
