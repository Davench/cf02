package ikkong.core.meta;

import org.beetl.sql.core.annotatoin.Table;

import ikkong.core.model.BaseModel;
import ikkong.core.toolbox.Func;

public class MetaTool {
	/**
	 * 获取javabean对应的表名
	 * 
	 * @param clazz
	 *            javabean.class
	 * @return String
	 */
	public String getTableName(Class<? extends BaseModel> clazz) {
		return clazz.getAnnotation(Table.class).name();
	}

	/**
	 * 获取mybatis Xml的namespace
	 * 
	 * @param clazz
	 *            mapper.class
	 * @param methodId
	 *            xmlsql节点
	 * @return String
	 */
	public String getSqlId(Class<?> clazz, String methodId) {
		return Func.builder(clazz.getName(), ".", methodId).toString();
	}
}
