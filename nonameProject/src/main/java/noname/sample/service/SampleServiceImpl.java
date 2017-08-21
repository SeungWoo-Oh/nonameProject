package noname.sample.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import noname.sample.dao.SampleDAO;

@Service("sampleService")
public class SampleServiceImpl implements SampleService {

		@Resource(name="sampleDAO")
		private SampleDAO sampleDAO;

		@Override
		public List<Map<String, Object>> selectUserList(Map<String, Object> map) throws Exception {
			// TODO Auto-generated method stub
			return sampleDAO.selectUserList(map);
		}
		
		
}
