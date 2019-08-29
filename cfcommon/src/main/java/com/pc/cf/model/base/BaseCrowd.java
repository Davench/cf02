package com.pc.cf.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseCrowd<M extends BaseCrowd<M>> extends Model<M> implements IBean {

	public M setId(java.lang.Integer id) {
		set("id", id);
		return (M)this;
	}
	
	public java.lang.Integer getId() {
		return getInt("id");
	}

	public M setDemandtype1(java.lang.Integer demandtype1) {
		set("demandtype1", demandtype1);
		return (M)this;
	}
	
	public java.lang.Integer getDemandtype1() {
		return getInt("demandtype1");
	}

	public M setDemandtype2(java.lang.Integer demandtype2) {
		set("demandtype2", demandtype2);
		return (M)this;
	}
	
	public java.lang.Integer getDemandtype2() {
		return getInt("demandtype2");
	}

	public M setTitle(java.lang.String title) {
		set("title", title);
		return (M)this;
	}
	
	public java.lang.String getTitle() {
		return getStr("title");
	}

	public M setEndtime(java.lang.Integer endtime) {
		set("endtime", endtime);
		return (M)this;
	}
	
	public java.lang.Integer getEndtime() {
		return getInt("endtime");
	}

	public M setCompanyid(java.lang.Integer companyid) {
		set("companyid", companyid);
		return (M)this;
	}
	
	public java.lang.Integer getCompanyid() {
		return getInt("companyid");
	}

	public M setCreatdate(java.lang.Integer creatdate) {
		set("creatdate", creatdate);
		return (M)this;
	}
	
	public java.lang.Integer getCreatdate() {
		return getInt("creatdate");
	}

	public M setPhoto(java.lang.String photo) {
		set("photo", photo);
		return (M)this;
	}
	
	public java.lang.String getPhoto() {
		return getStr("photo");
	}

	public M setDescription(java.lang.String description) {
		set("description", description);
		return (M)this;
	}
	
	public java.lang.String getDescription() {
		return getStr("description");
	}

	public M setProvincial(java.lang.String provincial) {
		set("provincial", provincial);
		return (M)this;
	}
	
	public java.lang.String getProvincial() {
		return getStr("provincial");
	}

	public M setCities(java.lang.String cities) {
		set("cities", cities);
		return (M)this;
	}
	
	public java.lang.String getCities() {
		return getStr("cities");
	}

	public M setCounties(java.lang.String counties) {
		set("counties", counties);
		return (M)this;
	}
	
	public java.lang.String getCounties() {
		return getStr("counties");
	}

	public M setAddress(java.lang.String address) {
		set("address", address);
		return (M)this;
	}
	
	public java.lang.String getAddress() {
		return getStr("address");
	}

	public M setContacts(java.lang.String contacts) {
		set("contacts", contacts);
		return (M)this;
	}
	
	public java.lang.String getContacts() {
		return getStr("contacts");
	}

	public M setPhone(java.lang.String phone) {
		set("phone", phone);
		return (M)this;
	}
	
	public java.lang.String getPhone() {
		return getStr("phone");
	}

	public M setType(java.lang.Integer type) {
		set("type", type);
		return (M)this;
	}
	
	public java.lang.Integer getType() {
		return getInt("type");
	}

	public M setStatus(java.lang.Integer status) {
		set("status", status);
		return (M)this;
	}
	
	public java.lang.Integer getStatus() {
		return getInt("status");
	}

}
