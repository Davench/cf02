package ikkong.platform.model;

import org.beetl.sql.core.annotatoin.Table;
import ikkong.core.annotation.BindID;
import ikkong.core.model.BaseModel;

/**
 * Generated by Blade.
 * 2018-01-28 15:39:09
 */
@Table(name = "crowditem")
@BindID(name = "id")
@SuppressWarnings("serial")
public class Crowditem extends BaseModel {
    	private Integer id;
    	private Integer crowdid;
    	private Integer goodid;
    	private Integer price;
    	private String desic;
    	private String title;

    	@AutoID
    	public Integer getId() {
    		return id;
    	}

    	public void setId(Integer id) {
    		this.id = id;
    	}

    	public Integer getCrowdid() {
    		return crowdid;
    	}

    	public void setCrowdid(Integer crowdid) {
    		this.crowdid = crowdid;
    	}

    	public Integer getGoodid() {
    		return goodid;
    	}

    	public void setGoodid(Integer goodid) {
    		this.goodid = goodid;
    	}

    	public Integer getPrice() {
    		return price;
    	}

    	public void setPrice(Integer price) {
    		this.price = price;
    	}

    	public String getDesic() {
    		return desic;
    	}

    	public void setDesic(String desic) {
    		this.desic = desic;
    	}

    	public String getTitle() {
    		return title;
    	}

    	public void setTitle(String title) {
    		this.title = title;
    	}

}
