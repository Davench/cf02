package com.pc.cf.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseGoods<M extends BaseGoods<M>> extends Model<M> implements IBean {

	public M setId(java.lang.Integer id) {
		set("id", id);
		return (M)this;
	}
	
	public java.lang.Integer getId() {
		return getInt("id");
	}

	public M setName(java.lang.String name) {
		set("name", name);
		return (M)this;
	}
	
	public java.lang.String getName() {
		return getStr("name");
	}

	public M setType1(java.lang.Integer type1) {
		set("type1", type1);
		return (M)this;
	}
	
	public java.lang.Integer getType1() {
		return getInt("type1");
	}

	public M setType2(java.lang.Integer type2) {
		set("type2", type2);
		return (M)this;
	}
	
	public java.lang.Integer getType2() {
		return getInt("type2");
	}

	public M setCode(java.lang.String code) {
		set("code", code);
		return (M)this;
	}
	
	public java.lang.String getCode() {
		return getStr("code");
	}

	public M setUnit(java.lang.String unit) {
		set("unit", unit);
		return (M)this;
	}
	
	public java.lang.String getUnit() {
		return getStr("unit");
	}

	public M setModel(java.lang.String model) {
		set("model", model);
		return (M)this;
	}
	
	public java.lang.String getModel() {
		return getStr("model");
	}

	public M setAttribute(java.lang.String attribute) {
		set("attribute", attribute);
		return (M)this;
	}
	
	public java.lang.String getAttribute() {
		return getStr("attribute");
	}

	public M setEffective(java.lang.Integer effective) {
		set("effective", effective);
		return (M)this;
	}
	
	public java.lang.Integer getEffective() {
		return getInt("effective");
	}

	public M setExpected(java.lang.Integer expected) {
		set("expected", expected);
		return (M)this;
	}
	
	public java.lang.Integer getExpected() {
		return getInt("expected");
	}

	public M setCreatTime(java.lang.Integer creatTime) {
		set("creatTime", creatTime);
		return (M)this;
	}
	
	public java.lang.Integer getCreatTime() {
		return getInt("creatTime");
	}

}
