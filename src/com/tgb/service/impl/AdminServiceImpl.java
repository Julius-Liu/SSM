package com.tgb.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.tgb.mapper.AdminMapper;
import com.tgb.model.Admin;
import com.tgb.service.AdminService;

@Service
@Transactional  //此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class AdminServiceImpl {

}
