package cn.bipark.reco.upms.domain.service;

import cn.bipark.reco.core.domain.service.BaseDomainService;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.domain.entity.QuestionLevelEntity;
import cn.bipark.reco.upms.domain.repository.QuestionLevelRepository;
import cn.bipark.reco.upms.model.entity.BiQuestionLevel;
import cn.bipark.reco.upms.model.viewmodel.list.QuestionLevelListVM;
import cn.bipark.reco.upms.model.viewmodel.form.QuestionLevelFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.QuestionLevelDetailVM;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QuestionLevelService extends BaseDomainService {

    /**
     * 处理聚合实体创建过程的领域内逻辑
     * @param vm
     * @return
     */
    public BiQuestionLevel create(QuestionLevelFormVM vm) {
        var entity = PageUtils.map(vm, BiQuestionLevel.class);
        actAs(entity, QuestionLevelEntity.class).init();
        resolve(QuestionLevelRepository.class).add(entity);
        actAs(entity, QuestionLevelEntity.class).notifyCreated();
        return entity;
    }

    /**
     * 修改聚合实体
     * @param vm 修改内容
     * @param id 对象id
     * @return
     */
    public boolean modify(QuestionLevelFormVM vm, Long id) {
        var oldEntity = this.resolve(QuestionLevelRepository.class).get(id);
        if (oldEntity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false; 
        }
        var newEntity = PageUtils.map(vm, BiQuestionLevel.class);

        if(actAs(oldEntity, QuestionLevelEntity.class).isModifiable()) {
            newEntity.setId(oldEntity.getId());
           if(resolve(QuestionLevelRepository.class).modify(newEntity)){
                actAs(newEntity, QuestionLevelEntity.class).notifyUpdated();
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
    public boolean remove(BiQuestionLevel entity){
        if(actAs(entity, QuestionLevelEntity.class).isDeleteable()) {
            if(resolve(QuestionLevelRepository.class).remove(entity.getId())){
                actAs(entity, QuestionLevelEntity.class).notifyDeleted();
                return true;
            }
        }
        return false;
    }
}
