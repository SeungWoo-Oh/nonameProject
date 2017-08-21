package noname.sample.service;

import java.util.List;
import java.util.Map;

public interface SampleService {
	
	List<Map<String, Object>> selectUserList(Map<String, Object> map) throws Exception;
}
