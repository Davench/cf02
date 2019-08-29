package ikkong.platform.model;

import ikkong.core.annotation.BindID;
import ikkong.core.model.BaseModel;
import org.beetl.sql.core.annotatoin.AutoID;
import org.beetl.sql.core.annotatoin.Table;

/**
 * Generated by Blade. 2016-10-08 15:59:45
 */
@Table(name = "city")
@BindID(name = "id")
@SuppressWarnings("serial")
public class City extends BaseModel {

	// 主键
	private Integer id;
	// 状态
	private Integer code;
	// 排序
	private String name;

	private int version;

	@AutoID
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}
}
