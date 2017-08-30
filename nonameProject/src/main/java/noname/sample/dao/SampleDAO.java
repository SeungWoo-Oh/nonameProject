package noname.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import noname.common.dao.AbstractDAO;

@Repository("sampleDAO")
public class SampleDAO extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectUserList(Map<String, Object> map) {
		return (List<Map<String, Object>>)selectList("sample.selectUserList", map);
	}

}
