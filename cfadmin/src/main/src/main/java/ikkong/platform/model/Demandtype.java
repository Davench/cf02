package ikkong.platform.model;

import org.beetl.sql.core.annotatoin.Table;
import ikkong.core.annotation.BindID;
import ikkong.core.model.BaseModel;

/**
 * Generated by Blade.
 * 2017-12-05 01:01:32
 */
@Table(name = "demandtype")
@BindID(name = "id")
@SuppressWarnings("serial")
public class Demandtype extends BaseModel {
    	private Integer id;
    	private Integer paraent; //是否是二级
    	private String name;

    	@AutoID
    	public Integer getId() {
    		return id;
    	}

    	public void setId(Integer id) {
    		this.id = id;
    	}

    	public Integer getParaent() {
    		return paraent;
    	}

    	public void setParaent(Integer paraent) {
    		this.paraent = paraent;
    	}

    	public String getName() {
    		return name;
    	}

    	public void setName(String name) {
    		this.name = name;
    	}

}
