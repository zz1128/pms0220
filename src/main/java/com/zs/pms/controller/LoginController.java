package com.zs.pms.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.xml.crypto.dsig.keyinfo.RetrievalMethod;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zs.pms.po.TPermission;
import com.zs.pms.po.TUser;
import com.zs.pms.service.UserService;
import com.zs.pms.utils.DateUtil;
import com.zs.pms.utils.MD5;
import com.zs.pms.vo.QueryLogin;
import com.zs.pms.vo.QueryUser;

@Controller  //������
public class LoginController {
	@Autowired
	UserService us;
	//ȥ��½ҳ��
	@RequestMapping("/tologin.do")
	public String tologin() {
		return "login";
	}
	//ȥ��ҳ
	@RequestMapping("/login.do")
	public String login(QueryLogin login,HttpSession session,ModelMap model) {
		//��֤��֤��
		String ocode =(String) session.getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
		//���ɵ���֤���ҳ�����֤�벻���
		if (!ocode.equals(login.getChkcode())) {
			model.addAttribute("MSG", "��֤���������,����������");
			return "login";
		}
		//��֤�˺�����  װ������
		QueryUser query = new QueryUser();
		query.setLoginname(login.getUsername());
		//MD5����
		MD5 md5 = new MD5();
		query.setPassword(md5.getMD5ofStr(login.getPassword()));
		query.setIsenabled(1);
		//���ص�¼���û�
		List<TUser> users = us.queryByCon(query);
		//��¼ʧ��
		if (users==null||users.size()!=1) {
			model.addAttribute("MSG", "�û������벻ƥ�䣬����������");
			return "login";
		}
		//��¼�ɹ�          װsession
		session.setAttribute("CUSER", users.get(0));
		return "main";
	}
	//ȥ����
	@RequestMapping("/top.do")
	public String top(ModelMap model) {
		model.addAttribute("TODAY", DateUtil.getStrDate(new Date()));
		return "top";
	}
	//ȥ�����
	@RequestMapping("/left.do")
	public String left(HttpSession session,ModelMap model) {
		//��õ�ǰ�ĵ�¼�û�
		TUser cu= (TUser) session.getAttribute("CUSER");
		//��ø��û���Ȩ���б�
		List<TPermission> list1 =us.queryByUid(cu.getId());
		//���ز˵�
		model.addAttribute("MENU",us.getMenu(list1));
		return "left";
	}
	//ȥ�Ҳ���
	@RequestMapping("/right.do")
	public String right() {
		return "right";
	}
}
