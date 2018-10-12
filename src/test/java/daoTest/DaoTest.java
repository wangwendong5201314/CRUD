package daoTest;

import com.alibaba.fastjson.JSONObject;
import mapper.UserMapper;
import model.User;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class DaoTest {
    @Autowired
    private UserMapper map;

    //查询所用用户信息并分页
    @org.junit.Test
    public void run1() throws Exception{
        JSONObject obj =new JSONObject();
        obj.put("offset",0);
        obj.put("limit",10);
        List<User> users = map.selectAll(obj);
        System.out.println(users);
    }

    //删除
    @org.junit.Test
    public void run2() throws Exception{
        User user =new User();
        user.setId(21);
        map.delete(user);
    }

    //添加
    @org.junit.Test
    public void run3() throws Exception{

        User user =new User();
        user.setUname("xiaoming11111");
        map.insert(user);

    }

    //修改
    @org.junit.Test
    public void run4() throws Exception{
        User user =new User();
        user.setId(3);
        user.setUname("1111111111");
        map.update(user);
    }

    //通过id查找
    @org.junit.Test
    public void run5() throws Exception{
        User user =new User();
        user.setId(2);
        User select = map.selectById(user);
        System.out.println(select);
    }

    //批量删除
    @org.junit.Test
    public void run6() throws Exception{
        String[] arr ={"87","88"};
        map.deletelist(arr);
    }


    //查询数据条数
    @org.junit.Test
    public void run8() throws Exception{
        JSONObject obj =new JSONObject();
        obj.put("offset",0);
        obj.put("limit",10);
        int i = map.countUser(obj);
        System.out.println(i);
    }

}


