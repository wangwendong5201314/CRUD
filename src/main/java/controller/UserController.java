package controller;


import java.util.List;


import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import model.User;
import net.sf.ehcache.search.impl.BaseResult;
import service.IUserService;


@Controller
@RequestMapping("/user")
public class UserController {
	
	

	@Autowired
	private IUserService ser;
	
	
	 @RequestMapping(value = "/",method = RequestMethod.GET)
	    public String index(){
	        return "admin-index";
	    }
	    @RequestMapping(value = "/{path}",method = RequestMethod.GET)
	    public String toPage(@PathVariable String path){
	        return path;
	    }

	
	@RequestMapping("/tologin.do")
	
	public String tologin1() throws Exception{
		
		return "admin-table";

	}

	//分页查询
	 @ResponseBody
	  @RequestMapping(value = "/getAllList.do",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
	    public Object dataJson(@RequestBody JSONObject jsonObject) throws Exception{
	        System.out.println(jsonObject);
	        	jsonObject = ser.findJSON(jsonObject);
	        return jsonObject;
}
	
	 //添加用户
	 @ResponseBody
	  @RequestMapping("/insert.do")
	    public Object dataJson(User user) throws Exception{
	     	System.out.println(user);
	     	ser.save(user);
	        return "success";
}


		
		
//修改用户信息
		@RequestMapping("/update.do")
		@ResponseBody
		public String finde(User user) throws Exception{
			System.out.println(user.getId());
			System.out.println(user.getPwd());
			ser.modify(user);
				
			return "success";

		}
		
		
		
		//删除用户信息
		@RequestMapping("/delete1.do")
		@ResponseBody
		public String del(User user) throws Exception{
			System.out.println(user.getId());
			
			ser.remove(user);
				
			return "success";

		}
	 
		//批量删除
		 @ResponseBody
		  @RequestMapping("/deleteUserList.do")
		    public Object deleteUserList( String ids) throws Exception{
			 	
			 	System.out.println(ids);
			 	
			 	String[] split = ids.split(",");
			 	
			 	ser.removeList(split);
				return "success";
		     	
		     	
					
		
	
		 }	 
	 
}