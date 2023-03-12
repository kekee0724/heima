package cn.bipark.reco.upms.domain.service;

import cn.bipark.reco.core.domain.service.BaseDomainService;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.domain.entity.QuestionEntity;
import cn.bipark.reco.upms.domain.repository.QuestionRepository;
import cn.bipark.reco.upms.model.entity.BiQuestion;
import cn.bipark.reco.upms.model.viewmodel.form.QuestionFormVM;
import org.springframework.stereotype.Service;

@Service
public class QuestionService extends BaseDomainService {

    /**
     * 处理聚合实体创建过程的领域内逻辑
     * @param vm
     * @return
     */
    public BiQuestion create(QuestionFormVM vm) {
        var entity = PageUtils.map(vm, BiQuestion.class);
        actAs(entity, QuestionEntity.class).init();
        resolve(QuestionRepository.class).add(entity);
        actAs(entity, QuestionEntity.class).notifyCreated();
        return entity;
    }

    /**
     * 修改聚合实体
     * @param vm 修改内容
     * @param id 对象id
     * @return
     */
    public boolean modify(QuestionFormVM vm, Long id) {
        var oldEntity = this.resolve(QuestionRepository.class).get(id);
        if (oldEntity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false; 
        }
        var newEntity = PageUtils.map(vm, BiQuestion.class);

        if(actAs(oldEntity, QuestionEntity.class).isModifiable()) {
            newEntity.setId(oldEntity.getId());
           if(resolve(QuestionRepository.class).modify(newEntity)){
                actAs(newEntity, QuestionEntity.class).notifyUpdated();
                return true;
            }
        }
        return false;
    }

    /**
     * 删除聚合实体
     * @param entity
     * @return
     */
    public boolean remove(BiQuestion entity){
        if(actAs(entity, QuestionEntity.class).isDeleteable()) {
            if(resolve(QuestionRepository.class).remove(entity.getId())){
                actAs(entity, QuestionEntity.class).notifyDeleted();
                return true;
            }
        }
        return false;
    }
}
