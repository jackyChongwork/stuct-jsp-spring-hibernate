package com.action;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.dao.TKehuDAO;
import com.model.TKehu;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.OrganizationService;
import com.util.MD5;

public class kehuAction extends ActionSupport
{
	private int kehuId;
	private String kehuName;
	private String kehuSex;
	private int kehuAge;
	private String kehuXueli;
	private String kehuZhiwei;
	private String kehuAddress;
	private String kehuTel;
	private String kehuEmail;
	private String kehuQq;
	private String kehuLoginName;
	private String kehuLoginPw;
	private int kehuOrgId;
	
	private TKehuDAO kehuDAO;
	private OrganizationService organizationService;
	private String message;
	private String path;
	
	
    private String filename;
    private InputStream inputStream;
    
    private String kehuAgeSta;
    private String kehuAgeEnd;
	
	public String kehuAdd()
	{
		TKehu kehu=new TKehu();
		kehu.setKehuName(kehuName);
		kehu.setKehuSex(kehuSex);
		kehu.setKehuAge(kehuAge);
		kehu.setKehuXueli(kehuXueli);
		kehu.setKehuZhiwei(kehuZhiwei);
		kehu.setKehuAddress(kehuAddress);
		kehu.setKehuTel(kehuTel);
		kehu.setKehuEmail(kehuEmail);
		kehu.setKehuQq(kehuQq);
		kehu.setKehuLoginName(kehuLoginName);
		kehu.setKehuLoginPw(MD5.md5s(kehuLoginPw));
		kehu.setKehuOrgId(kehuOrgId);
		kehu.setType("kehu");
		kehu.setDel("no");
		kehuDAO.save(kehu); 
		this.setMessage("操作成功");
		this.setPath("kehuMana.action");
		return "succeed";
	}
	
	
	public String kehuDel()
	{
		TKehu kehu=kehuDAO.findById(kehuId);
		kehu.setDel("yes");
		kehuDAO.attachDirty(kehu);
		this.setMessage("操作成功");
		this.setPath("kehuMana.action");
		return "succeed";
	}
	
	
	public String kehuMana()
	{
		String sql="from TKehu where type='kehu' and del='no'";
		List kehuList=kehuDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<kehuList.size();i++)
		{
			TKehu kehu=(TKehu)kehuList.get(i);
 
		}
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("kehuList", kehuList);
		return ActionSupport.SUCCESS;
	}
	
	public String kehuEditPre()
	{
		TKehu kehu=kehuDAO.findById(kehuId);
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("kehu", kehu);
		return ActionSupport.SUCCESS;
	}
	
	public String kehuEdit()
	{
		TKehu kehu=kehuDAO.findById(kehuId);
		kehu.setKehuName(kehuName);
		kehu.setKehuSex(kehuSex);
		kehu.setKehuAge(kehuAge);
		kehu.setKehuXueli(kehuXueli);
		kehu.setKehuZhiwei(kehuZhiwei);
		kehu.setKehuAddress(kehuAddress);
		kehu.setKehuTel(kehuTel);
		kehu.setKehuEmail(kehuEmail);
		kehu.setKehuQq(kehuQq);
		kehu.setKehuLoginName(kehuLoginName);
		kehu.setKehuLoginPw(MD5.md5s(kehuLoginPw));
		kehu.setKehuOrgId(kehuOrgId);
		kehu.setType("kehu");
		
		kehuDAO.attachDirty(kehu);
		this.setMessage("操作成功");
		this.setPath("kehuMana.action");
		return "succeed";
	}
	
	
	public String kehuSearch()
	{
		String sql="from TKehu where type='kehu' and del='no' and kehuName like '%"+kehuName+"%'";
		List kehuList=kehuDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<kehuList.size();i++)
		{
			TKehu kehu=(TKehu)kehuList.get(i);
 
		}
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("kehuList", kehuList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String kehuExcel()
	{
			try
			{
				this.filename=new String("人事信息.xls".getBytes(), "ISO-8859-1");
			} 
			catch (UnsupportedEncodingException e)
			{
				e.printStackTrace();
			}
		    return ActionSupport.SUCCESS;
	}
 
	public String kehuBiandong()
	{
		TKehu kehu=kehuDAO.findById(kehuId);
		kehu.setKehuOrgId(kehuOrgId);
		kehu.setKehuOrgName(organizationService.findById(kehuOrgId).getOrgName());
		kehuDAO.attachDirty(kehu);
		this.setMessage("操作成功");
		this.setPath("kehuMana.action");
		return "succeed";
	}
	
	
	
	
	
	
	
	
	
	
	public InputStream getInputStream()
	{
        HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet = wb.createSheet("new sheet");
		
		HSSFRow row = sheet.createRow(0);
		HSSFCell cell=row.createCell((short)0);
		cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell.setCellValue("姓名");
				
		cell=row.createCell((short)1);
		cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell.setCellValue("性别");
		
		cell=row.createCell((short)2);
		cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell.setCellValue("年龄");
		
		cell=row.createCell((short)3);
		cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell.setCellValue("学历");
		
		cell=row.createCell((short)4);
		cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell.setCellValue("工作职位");
		
		
		cell=row.createCell((short)5);
		cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell.setCellValue("住址");
		
		cell=row.createCell((short)6);
		cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell.setCellValue("联系方式");
		
		cell=row.createCell((short)7);
		cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell.setCellValue("email");
				
		String sql="from TKehu where type='kehu' and del='no'";
		List kehuList=kehuDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<kehuList.size();i++)
		{
			TKehu kehu=(TKehu)kehuList.get(i);
			
			row=sheet.createRow(i+1);
			cell=row.createCell((short)0);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(kehu.getKehuName());
					
			cell=row.createCell((short)1);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(kehu.getKehuSex());
			
			cell=row.createCell((short)2);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(kehu.getKehuAge());
			
			cell=row.createCell((short)3);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(kehu.getKehuXueli());
			
			cell=row.createCell((short)4);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(kehu.getKehuZhiwei());
			
			cell=row.createCell((short)5);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(kehu.getKehuAddress());
			
			cell=row.createCell((short)6);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(kehu.getKehuTel());
			
			cell=row.createCell((short)7);
			cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell.setCellValue(kehu.getKehuEmail());
		}
		
		
		
		
		ByteArrayOutputStream os=new ByteArrayOutputStream();
		try
		{
			wb.write(os);
		} catch (IOException e)
		{
			e.printStackTrace();
		}
		byte[] content=os.toByteArray();
		InputStream is=new ByteArrayInputStream(content);
		return is;
	}
	
	public void setInputStream(InputStream inputStream)
	{
		this.inputStream = inputStream;
	}

	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}
	public String getPath()
	{
		return path;
	}
	
	public OrganizationService getOrganizationService()
	{
		return organizationService;
	}


	public void setOrganizationService(OrganizationService organizationService)
	{
		this.organizationService = organizationService;
	}


	public String getFilename()
	{
		return filename;
	}


	public void setFilename(String filename)
	{
		this.filename = filename;
	}


	public String getKehuLoginName()
	{
		return kehuLoginName;
	}


	public void setKehuLoginName(String kehuLoginName)
	{
		this.kehuLoginName = kehuLoginName;
	}


	public String getKehuLoginPw()
	{
		return kehuLoginPw;
	}


	public void setKehuLoginPw(String kehuLoginPw)
	{
		this.kehuLoginPw = kehuLoginPw;
	}


	public String getKehuAgeEnd()
	{
		return kehuAgeEnd;
	}


	public void setKehuAgeEnd(String kehuAgeEnd)
	{
		this.kehuAgeEnd = kehuAgeEnd;
	}


	public String getKehuAgeSta()
	{
		return kehuAgeSta;
	}


	public void setKehuAgeSta(String kehuAgeSta)
	{
		this.kehuAgeSta = kehuAgeSta;
	}

	public void setPath(String path)
	{
		this.path = path;
	}
	public String getKehuAddress()
	{
		return kehuAddress;
	}
	public void setKehuAddress(String kehuAddress)
	{
		this.kehuAddress = kehuAddress;
	}

	public int getKehuAge()
	{
		return kehuAge;
	}


	public void setKehuAge(int kehuAge)
	{
		this.kehuAge = kehuAge;
	}


	public TKehuDAO getKehuDAO()
	{
		return kehuDAO;
	}
	public void setKehuDAO(TKehuDAO kehuDAO)
	{
		this.kehuDAO = kehuDAO;
	}
	public String getKehuEmail()
	{
		return kehuEmail;
	}
	public void setKehuEmail(String kehuEmail)
	{
		this.kehuEmail = kehuEmail;
	}
	public int getKehuId()
	{
		return kehuId;
	}
	public void setKehuId(int kehuId)
	{
		this.kehuId = kehuId;
	}
	public String getKehuName()
	{
		return kehuName;
	}
	public void setKehuName(String kehuName)
	{
		this.kehuName = kehuName;
	}
	public int getKehuOrgId()
	{
		return kehuOrgId;
	}
	public void setKehuOrgId(int kehuOrgId)
	{
		this.kehuOrgId = kehuOrgId;
	}
	public String getKehuQq()
	{
		return kehuQq;
	}
	public void setKehuQq(String kehuQq)
	{
		this.kehuQq = kehuQq;
	}
	public String getKehuSex()
	{
		return kehuSex;
	}
	public void setKehuSex(String kehuSex)
	{
		this.kehuSex = kehuSex;
	}
	public String getKehuTel()
	{
		return kehuTel;
	}
	public void setKehuTel(String kehuTel)
	{
		this.kehuTel = kehuTel;
	}
	public String getKehuXueli()
	{
		return kehuXueli;
	}
	
	public void setKehuXueli(String kehuXueli)
	{
		this.kehuXueli = kehuXueli;
	}
	public String getKehuZhiwei()
	{
		return kehuZhiwei;
	}
	public void setKehuZhiwei(String kehuZhiwei)
	{
		this.kehuZhiwei = kehuZhiwei;
	}
	
}
