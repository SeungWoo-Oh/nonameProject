package noname.common.object;

import java.util.HashMap;
import java.util.Map;

/*페이징 관련 모델*/
public class BoardPaging {
	
	public Map<String, Object> PagingMethod(int currentPage, int totalCount){
		Map<String, Object> map = new HashMap<String, Object>();
		int blockCount = 3; // 페이지 사이즈
		int rowCount = 2; //한 페이지에 보여줄 글의 수
		int beginRow = (currentPage-1)*rowCount; // 첫번째 글의 번호
		int startPage =((currentPage-1)/blockCount)*blockCount +1; //페이지 사이즈의 첫 번호
 		int endPage =startPage + blockCount -1; //페이지 사이즈의 끝 번호
 		
 		//페이지 사이즈의 마지막 번호
 		int lastPage= totalCount/rowCount; 
 		if(totalCount%rowCount !=0) {
 			lastPage++;
 		}
 		
 		if(endPage > lastPage) {
 			endPage = lastPage;
 		}
 		
 		map.put("beginRow", beginRow);
 		map.put("rowCount", rowCount);
 		map.put("startPage", startPage);
 		map.put("endPage", endPage);
 		map.put("blockCount", blockCount);
 		map.put("lastPage", lastPage);
 		
		return map;
	}
}
