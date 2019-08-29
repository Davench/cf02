package com.pc.cf.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseTbTfwBlog<M extends BaseTbTfwBlog<M>> extends Model<M> implements IBean {

	public M setFItId(java.lang.Integer fItId) {
		set("f_it_id", fItId);
		return (M)this;
	}
	
	public java.lang.Integer getFItId() {
		return getInt("f_it_id");
	}

	public M setFItDel(java.lang.Integer fItDel) {
		set("f_it_del", fItDel);
		return (M)this;
	}
	
	public java.lang.Integer getFItDel() {
		return getInt("f_it_del");
	}

	public M setFItSeq(java.lang.Integer fItSeq) {
		set("f_it_seq", fItSeq);
		return (M)this;
	}
	
	public java.lang.Integer getFItSeq() {
		return getInt("f_it_seq");
	}

	public M setFItContent(java.lang.String fItContent) {
		set("f_it_content", fItContent);
		return (M)this;
	}
	
	public java.lang.String getFItContent() {
		return getStr("f_it_content");
	}

	public M setFItTitle(java.lang.String fItTitle) {
		set("f_it_title", fItTitle);
		return (M)this;
	}
	
	public java.lang.String getFItTitle() {
		return getStr("f_it_title");
	}

	public M setFItCreatetime(java.util.Date fItCreatetime) {
		set("f_it_createtime", fItCreatetime);
		return (M)this;
	}
	
	public java.util.Date getFItCreatetime() {
		return get("f_it_createtime");
	}

	public M setVersion(java.lang.Integer version) {
		set("version", version);
		return (M)this;
	}
	
	public java.lang.Integer getVersion() {
		return getInt("version");
	}

}
