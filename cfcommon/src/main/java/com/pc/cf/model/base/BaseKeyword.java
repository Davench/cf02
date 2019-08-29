package com.pc.cf.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseKeyword<M extends BaseKeyword<M>> extends Model<M> implements IBean {

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

	public M setType(java.lang.Integer type) {
		set("type", type);
		return (M)this;
	}
	
	public java.lang.Integer getType() {
		return getInt("type");
	}

	public M setContentid(java.lang.Integer contentid) {
		set("contentid", contentid);
		return (M)this;
	}
	
	public java.lang.Integer getContentid() {
		return getInt("contentid");
	}

	public M setCreatdate(java.lang.Integer creatdate) {
		set("creatdate", creatdate);
		return (M)this;
	}
	
	public java.lang.Integer getCreatdate() {
		return getInt("creatdate");
	}

}
