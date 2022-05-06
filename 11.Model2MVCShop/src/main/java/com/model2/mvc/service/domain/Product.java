package com.model2.mvc.service.domain;

import java.sql.Date;


public class Product {
	
	private String fileName; // ��ǰ�̹��� �����̸�
	private String manuDate; // ��ǰ��������
	private int price; // ��ǰ����
	private String prodDetail; // ��ǰ������
	private String prodName; // ��ǰ�� 
	private int prodNo; // intŸ���� ��ǰ��ȣ
	private Date regDate; // ��ǰ�������
	private String proTranCode;
	
	//////////////////////////////////////////////////////////////////////////////////////////////
	// JSON ==> Domain Object  Binding�� ���� �߰��� �κ�
	private String regDateString;
	
	public Product(){
	}
	
	public String getProTranCode() {
		return proTranCode;
	}
	public void setProTranCode(String proTranCode) {
		this.proTranCode = proTranCode.trim();
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getManuDate() {
		return manuDate;
	}
	public void setManuDate(String manuDate) {
		this.manuDate = manuDate.replace("-","");
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getProdDetail() {
		return prodDetail;
	}
	public void setProdDetail(String prodDetail) {
		this.prodDetail = prodDetail;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public int getProdNo() {
		return prodNo;
	}
	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
		
		if(regDate !=null) {
			// JSON ==> Domain Object  Binding�� ���� �߰��� �κ�
			this.setRegDateString( regDate.toString().split("-")[0]
													+"-"+ regDate.toString().split("-")[1]
													+ "-" +regDate.toString().split("-")[2] );
		}
		
	}
	
	public String getRegDateString() {
		return regDateString;
	}

	public void setRegDateString(String regDateString) {
		this.regDateString = regDateString;
	}

	// Override
	public String toString() {
		return "ProductVO : [fileName]" + fileName
				+ "[manuDate]" + manuDate+ "[price]" + price + "[prodDetail]" + prodDetail
				+ "[prodName]" + prodName + "[prodNo]" + prodNo;
	}	
}