package cn.bipark.reco.upms.domain.repository;

import cn.bipark.reco.core.domain.repository.BaseRepository;
import cn.bipark.reco.core.domain.repository.QueryHandler;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.model.entity.BiUser;
import cn.bipark.reco.upms.model.mapper.BiUserMapper;
import cn.bipark.reco.upms.model.query.UserQuery;
import cn.bipark.reco.upms.model.viewmodel.list.UserListVM;
import org.springframework.stereotype.Component;

@Component
public class UserRepository extends BaseRepository<BiUser, BiUserMapper>
        implements QueryHandler<UserQuery, BiUser> {
        
     /**
     * 分页查询（用于映射自定义SQL的分页查询）
     * @param query 查询条件
     * @return 
     */
    public PagedList<UserListVM> findPaged(UserQuery query) {
        return PageUtils.toPagedList(() -> resolve(BiUserMapper.class).findBy(query), query);
    }
}
