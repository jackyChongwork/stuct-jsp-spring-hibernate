package com.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

/**
 * ���ʵ�ֽ�������ͨ������ѷ��Ͷ���
 * 
 * @author leo
 * @date Mar 25, 2010 1:43:50 PM
 */
public class Fetion
{
	public static void main(String[] args) throws IOException
	{
		String sUrl = "http://sms.api.bz/fetion.php?";
		String fromNo = "13455927413";// ���Ͷ��ֻ�����
		String password = "198331qwe";// ���ŵ�½����
		String toNo = "15806022604";// �����ֻ�����
		String msg = "���Գ��򡣡��յ���ظ���";// ��������
		sUrl += "from=" + fromNo + "&pw=" + password + "&to=" + toNo + "&msg="
				+ msg;
		System.out.println(sUrl);
		URL url = new URL(sUrl);
		URLConnection urlConn = url.openConnection();

		BufferedReader in = new BufferedReader(new InputStreamReader(urlConn
				.getInputStream(), "UTF-8"));

		String rets = "";
		if (in != null)
		{
			for (String s = ""; (s = in.readLine()) != null;)
			{
				rets = rets + s;
			}
		}

		in.close();
		System.out.println("Result : " + rets);
		System.out.println("���ͳɹ�");
	}
}
