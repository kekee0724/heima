package cn.bipark.reco.service.impl;

import cn.bipark.reco.domain.User;
import cn.bipark.reco.dao.UserMapper;
import cn.bipark.reco.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户 服务实现类
 * </p>
 *
 * @author 黑马程序员
 * @since 2023-03-20
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

}
