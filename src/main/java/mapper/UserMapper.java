package mapper;

import java.util.List;

import com.alibaba.fastjson.JSONObject;
import com.mysql.fabric.xmlrpc.base.Array;

import model.User;
import net.sf.ehcache.search.aggregator.Count;



public interface UserMapper {

	public void insert(User user) throws Exception;
	
	public void delete(User user) throws Exception;
	
	public void deletelist(String[] ids) throws Exception;
	
	public void update(User user) throws Exception;
	
	public List<User> selectAll(JSONObject jsonObject) throws Exception;
	
	public User selectById(User user)throws Exception;
	
	public int countUser(JSONObject jsonObject)throws Exception;
}
