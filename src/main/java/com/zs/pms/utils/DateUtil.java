package com.zs.pms.utils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;





/**
 * @author Administrator
 *ʱ�乤����
 */
public class DateUtil {
/**
 *  ��õ�ǰʱ��ķ������ַ�����
 * @return �Żص�ǰʱ���ַ���
 */
	public static String getStrDate(Date date) {
		//�����������
		Calendar cal =Calendar.getInstance();
		cal.setTime(date);
		//��ǰ����
		int y=cal.get(Calendar.YEAR);
		//��ǰ����(�·��Ǵ�0��ʼ��)
		int m=cal.get(Calendar.MONTH)+1;
		//��ǰ����
		int d=cal.get(Calendar.DAY_OF_MONTH);
		//��ǰ��Сʱ��24Сʱ�ƣ�
		int hh=cal.get(Calendar.HOUR_OF_DAY);
		//ͨ����õ�ǰ��Сʱ���ж���������������
		String str="";
		if (hh>=6&&hh<=11) {
			str="�����";
		} else if (hh>11&&hh<=14) {
			str="�����";
		}else if (hh>14&&hh<=18) {
			str="�����";
		}else if (hh>18&&hh<24) {
			str="���Ϻ�";
		}else {
			str="̫���ˣ���ȥ˯��";
		}
		return y+"-"+m+"-"+d+" "+str;	
	}
	
	
	/**
	 * �ַ���תDate�ķ���
	 * @param time
	 * @param pattern �����ַ�����ʱ���ʽ
	 * @return ���ص���date��ʱ��
	 * @throws ParseException
	 */
	public static Date getStrToDate(String time,String pattern) throws ParseException {
		//��ø�ʽ������
		SimpleDateFormat sdf =new SimpleDateFormat(pattern);
	    //���ظ�ʽ�����ʱ��
		return sdf.parse(time);
	}
	
	
	/**
	 * dateתstringʱ��ķ���
	 * @param time date���ʱ��
	 * @param pattern ��ʱ���ʽ��ʲô��
	 * @return �ַ������ʱ��
	 */
	public static String getDateToStr(Date time,String pattern) {
		// ��ø�ʽ������
		SimpleDateFormat sdf =new SimpleDateFormat(pattern);
		// ���ظ�ʽ�����ʱ��
		return sdf.format(time);
		
	}

	//���Ե��������
//	public static void main(String[] args) {
//		System.out.println(DateUtil.getStrDate());
//		try {
//			System.out.println(DateUtil.getStrToDate("2018-1-1 12:22:12", "yyyy-MM-dd hh:mm:ss"));
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
}

