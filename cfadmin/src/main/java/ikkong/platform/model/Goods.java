package ikkong.platform.model;

import ikkong.core.annotation.BindID;
import ikkong.core.model.BaseModel;
import org.beetl.sql.core.annotatoin.AutoID;
import org.beetl.sql.core.annotatoin.Table;

/**
 * Generated by Blade.
 * 2017-12-05 00:31:02
 */
@Table(name = "goods")
@BindID(name = "id")
@SuppressWarnings("serial")
public class Goods extends BaseModel {
    	private Integer id;
    	private Integer creatTime;
    	private Integer effective;
    	private Integer expected;
    	private Integer type1;
    	private Integer type2;
    	private String attribute;
    	private String code;
    	private String model;
    	private String name;
    	private String unit;

    	@AutoID
    	public Integer getId() {
    		return id;
    	}

    	public void setId(Integer id) {
    		this.id = id;
    	}

    	public Integer getCreatTime() {
    		return creatTime;
    	}

    	public void setCreatTime(Integer creatTime) {
    		this.creatTime = creatTime;
    	}

    	public Integer getEffective() {
    		return effective;
    	}

    	public void setEffective(Integer effective) {
    		this.effective = effective;
    	}

    	public Integer getExpected() {
    		return expected;
    	}

    	public void setExpected(Integer expected) {
    		this.expected = expected;
    	}

    	public Integer getType1() {
    		return type1;
    	}

    	public void setType1(Integer type1) {
    		this.type1 = type1;
    	}

    	public Integer getType2() {
    		return type2;
    	}

    	public void setType2(Integer type2) {
    		this.type2 = type2;
    	}

    	public String getAttribute() {
    		return attribute;
    	}

    	public void setAttribute(String attribute) {
    		this.attribute = attribute;
    	}

    	public String getCode() {
    		return code;
    	}

    	public void setCode(String code) {
    		this.code = code;
    	}

    	public String getModel() {
    		return model;
    	}

    	public void setModel(String model) {
    		this.model = model;
    	}

    	public String getName() {
    		return name;
    	}

    	public void setName(String name) {
    		this.name = name;
    	}

    	public String getUnit() {
    		return unit;
    	}

    	public void setUnit(String unit) {
    		this.unit = unit;
    	}

}
