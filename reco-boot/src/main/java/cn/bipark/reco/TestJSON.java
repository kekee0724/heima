package cn.bipark.reco;

import cn.bipark.reco.upms.model.entity.BiUser;
import com.alibaba.fastjson.JSON;

public class TestJSON {
    public static void main(String[] args) {
        BiUser u = new BiUser();
        u.setId(1L);
        u.setUsername("kekee");
        u.setPassword("0724");
        String s = JSON.toJSONString(u);
        System.out.println(s);
    }
}
