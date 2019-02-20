package com.zs.pms.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zs.pms.dao.UserDao;
import com.zs.pms.po.TPermission;
import com.zs.pms.po.TUser;
import com.zs.pms.service.UserService;
import com.zs.pms.utils.Constants;
import com.zs.pms.vo.QueryUser;

@Service
@Transactional  //��Ҫ��������ʧ���ҵ�����
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao dao;

	@Override
	public void hello() {
		// TODO Auto-generated method stub
		System.out.println("Hello Spring");
	}

	@Override
	public List<TPermission> queryByUid(int id) {
		// TODO Auto-generated method stub
		return dao.queryByUid(id);
	}

	@Override
	public List<TPermission> getMenu(List<TPermission> pers) {
		// TODO Auto-generated method stub
		//����������
		List<TPermission> list=new ArrayList<>();
		//����Ȩ���б�
		for(TPermission per:pers) {
			//һ���˵�
			if(per.getLev()==1) {
				//���ظ�һ���˵��µĶ����˵�
				//����
				for(TPermission per2:pers) {
					if(per2.getPid()==per.getId()) {
						//�����Ȩ��
						per.addChild(per2);
					}
				}
				list.add(per);
			}
		}
		
		return list;
	}

	@Override
	public List<TUser> queryByCon(QueryUser query) {
		// TODO Auto-generated method stub
		return dao.queryByCon(query);
	}

	@Override
	public void deleteByIds(int[] ids) {
		// TODO Auto-generated method stub
		dao.deleteByIds(ids);
	}

	@Override
	public void updateUser(TUser user) {
		// TODO Auto-generated method stub
		dao.updateUser(user);
	}

	@Override
	@Transactional(rollbackFor=Exception.class)
	public int insertUser(TUser user) {
		// TODO Auto-generated method stub
		dao.insertUser(user);
		
		int a=1/0;
		dao.insertUser(user);
		
		return user.getId();
	}

	@Override
	public List<TUser> queryByPage(int page, QueryUser query) {
		// TODO Auto-generated method stub
		//ͨ����ǰҳ��������ʼ���ͽ�ֹ��
		//��ʼ��  ��1��ʼ
		int start=(page-1)*Constants.PAGECONT+1;
		//��ֹ��
		int end=page*Constants.PAGECONT;
		query.setStart(start);
		query.setEnd(end);
		
		return dao.queryByPage(query);
	}

	@Override
	public int queryPageCont(QueryUser query) {
		// TODO Auto-generated method stub
		//ͨ��������������ҳ��
		int cont=dao.queryCount(query);
		//������
		if(cont%Constants.PAGECONT==0) {
			return cont/Constants.PAGECONT;
		}
		else {
			return cont/Constants.PAGECONT+1;
		}
		
		
		
	}

	
	
	
	
}
