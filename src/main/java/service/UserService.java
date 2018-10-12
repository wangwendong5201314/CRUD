package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSONObject;

import mapper.UserMapper;
import model.User;
import service.IUserService;

@Service
@Transactional(isolation=Isolation.READ_COMMITTED,propagation=Propagation.REQUIRED)
public class UserService implements IUserService {
	
	@Autowired
	private UserMapper mapper;

	@Override
	public void save(User user) throws Exception {
		mapper.insert(user);
		
	}

	@Override
	public void modify(User user) throws Exception {
		mapper.update(user);
		
	}

	@Override
	public void remove(User user) throws Exception {
		mapper.delete(user);
	}



	@Override
	public User findById(User user) throws Exception {
		
		return mapper.selectById(user);
	}

	@Override
	public void removeList(String[] ids) throws Exception {
		
		mapper.deletelist(ids);
		
	}

	@Override
	public JSONObject findJSON(JSONObject jsonObject) throws Exception {
			List<User> list = mapper.selectAll(jsonObject);
			int i = mapper.countUser(jsonObject);
			jsonObject.put("total", i);
			jsonObject.put("rows",list);
		return jsonObject;
	}

	

}
