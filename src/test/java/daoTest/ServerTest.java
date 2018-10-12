package daoTest;

import com.alibaba.fastjson.JSONObject;
import model.User;
import org.junit.Test;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import service.IUserService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class ServerTest {

    @Autowired
    private IUserService ser;

    //增加
    @Test
    public void run1() throws Exception {
        User user =new User();
        user.setUname("xxxxxxxxxxxxxxxx");
        ser.save(user);
    }

    //删除
    @Test
    public void run2() throws Exception {
        User user =new User();
        user.setId(89);
        ser.remove(user);
    }

    //修改
    @Test
    public void run3() throws Exception {
        User user =new User();
        user.setId(86);
        user.setUname("goodd");
        ser.modify(user);
    }

    //查询单个

    @Test
    public void run4() throws Exception {
      User user =new User();
      user.setId(86);
        User ser1 = ser.findById(user);
        System.out.println(ser1);
    }

    @Test
    public void run5() throws Exception {
        String[] arr ={"82","83"};
        ser.removeList(arr);
    }

    @Test
    public void run8() throws Exception{
        JSONObject obj =new JSONObject();
        obj.put("offset",0);
        obj.put("limit",10);
        JSONObject json = ser.findJSON(obj);
        System.out.println(json);
    }

}
