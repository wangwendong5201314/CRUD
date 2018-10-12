package service;

import java.util.List;

import com.alibaba.fastjson.JSONObject;

import model.User;

public interface IUserService {

	public void save(User user) throws Exception;
	
	public void modify(User user) throws Exception;
	
	public void remove(User user) throws Exception;
	
	public JSONObject findJSON(JSONObject jsonObject)throws Exception;
	
	public User findById(User user) throws Exception;

	public void removeList(String[] ids) throws Exception;
	
}
