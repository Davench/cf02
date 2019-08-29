package com.pc.cf.config;

import com.jfinal.config.*;
import com.jfinal.core.JFinal;
import com.jfinal.json.JacksonFactory;
import com.jfinal.kit.PathKit;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.plugin.ehcache.EhCachePlugin;
import com.jfinal.template.Engine;
import com.pc.cf.common.AutoBindRoutes;
import com.pc.cf.constant.CommonConstant;
import com.pc.cf.controller.IndexController;
import com.pc.cf.interceptor.PublicInterceptor;
import com.pc.cf.model._MappingKit;
import com.pc.cf.model.service.CityService;
import com.pc.lon.LonControl;

import java.io.File;

/**
 * 本 demo 仅表达最为粗浅的 jfinal 用法，更为有价值的实用的企业级用法 详见 JFinal 俱乐部: http://jfinal.com/club
 * 
 * API引导式配置
 */
public class WXConfig extends JFinalConfig {

	/**
	 * 运行此 main 方法可以启动项目，此main方法可以放置在任意的Class类定义中，不一定要放于此
	 * 
	 * 使用本方法启动过第一次以后，会在开发工具的 debug、run config 中自动生成 一条启动配置，可对该自动生成的配置再添加额外的配置项，例如 VM argument 可配置为： -XX:PermSize=64M -XX:MaxPermSize=256M
	 */
	public static void main(String[] args) {
		/**
		 * 特别注意：Eclipse 之下建议的启动方式
		 */
		JFinal.start("src/main/webapp", 80, "/", 5);

		/**
		 * 特别注意：IDEA 之下建议的启动方式，仅比 eclipse 之下少了最后一个参数
		 */
		// JFinal.start("src/main/webapp", 80, "/");
	}

	/**
	 * 配置常量
	 */
	public void configConstant(Constants me) {
		// 加载少量必要配置，随后可用PropKit.get(...)获取值
		PropKit.use("a_little_config.txt");
//		me.setBaseUploadPath(PropKit.get("upload","download"));
		me.setBaseUploadPath(PropKit.get("upload","download"));
		me.setDevMode(PropKit.getBoolean("devMode", false));
		// json解析器
		me.setJsonFactory(new JacksonFactory());
		// 缓存
	}

	/**
	 * 配置路由
	 */
	public void configRoute(Routes me) {
		AutoBindRoutes autoBindRoutes =  new AutoBindRoutes();
		autoBindRoutes.addExcludeClasses(LonControl.class);
		me.add(autoBindRoutes);
		// me.add("/msg", WeixinMsgController.class);
		// me.add("/pay", WeixinPayController.class);
		// me.add("/wxa/user", WxaUserApiController.class);
		// me.add("/pay", WeixinPayController.class);
		me.add("/", IndexController.class); //
		// 第三个参数为该Controller的视图存放路径
		// me.add("/food", FoodController.class,"/food"); //
		// 第三个参数省略时默认与第一个参数值相同，在此即为 "/blog"
	}

	public void configEngine(Engine me) {
		me.addSharedFunction("/common/_head.html");
		me.addSharedFunction("/common/_layout_index.html");
		me.addSharedFunction("/common/_layout_admin_chart.html");
		me.addSharedFunction("/common/_layout_admin_list.html");
		me.addSharedFunction("/common/_layout_list.html");
		me.addSharedFunction("/common/companytab.html");
		me.addSharedFunction("/common/_company.html");
		me.addSharedFunction("/common/float.html");
		me.addSharedFunction("/common/left.html");
		me.addSharedFunction("/common/top.html");
		me.addSharedFunction("/common/footer.html");
		me.addSharedFunction("/common/tab2.html");
		me.addSharedFunction("/common/search.html");
		// me.addSharedFunction("/common/_paginate.html");
	}

	/**
	 * 配置插件
	 */
	public void configPlugin(Plugins me) {
		// 配置C3p0数据库连接池插件
		DruidPlugin druidPlugin = new DruidPlugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password").trim());
		me.add(druidPlugin);

		// 配置ActiveRecord插件
		ActiveRecordPlugin arp = new ActiveRecordPlugin(druidPlugin);
//		System.out.println(PathKit.getRootClassPath() + File.separator + "src/main/resources/sql");
//		arp.setBaseSqlTemplatePath(PathKit.getRootClassPath() + File.separator + "src/main/resources/sql");
		System.out.println(PathKit.getRootClassPath() + File.separator + "/sql");
		arp.setBaseSqlTemplatePath(PathKit.getRootClassPath() + File.separator + "/sql");
		arp.addSqlTemplate("all.sql");
		// 所有映射在 MappingKit 中自动化搞定
		_MappingKit.mapping(arp);
		me.add(arp);

		// 缓存插件
		me.add(new EhCachePlugin());
	}

	public static DruidPlugin createDruidPlugin() {
		return new DruidPlugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password").trim());
	}

	/**
	 * 配置全局拦截器
	 */
	public void configInterceptor(Interceptors me) {
		me.add(new PublicInterceptor());
	}

	@Override
	public void afterJFinalStart() {
		super.afterJFinalStart();

		CommonConstant.cities =  CityService.getMaps();
		// //启动的时候 把系统已经存在的服务号相关资料注册服务器
		// List<Public> publics = PublicService.findAllByStatus(Constant.Type.public_normal);
		// CacheKit.removeAll(Constant.Cache.cache_public_key);
		// for (Public p : publics) {
		// CacheKit.put(Constant.Cache.cache_public_key, p.getId(), p);
		// WXUtil.setPublic(p);
		// }

		/**
		 * 1.9 新增LocalTestTokenCache用于本地和线上同时使用一套appId时避免本地将线上AccessToken冲掉
		 * 
		 * 设计初衷：https://www.oschina.net/question/2702126_2237352
		 * 
		 * 注意： 1. 上线时应保证此处isLocalDev为false，或者注释掉该不分代码！
		 * 
		 * 2. 为了安全起见，此处可以自己添加密钥之类的参数，例如： http://localhost/weixin/api/getToken?secret=xxxx 然后在WeixinApiController#getToken()方法中判断secret
		 * 
		 * @see WeixinApiController#getToken()
		 */
		// if (true) {
		// String onLineTokenUrl = "http://cm9jnh.natappfree.cc/api/getToken";
		// ApiConfigKit.setAccessTokenCache(new LocalTestTokenCache(onLineTokenUrl));
		// }
		// WxaConfig wc = new WxaConfig();
		// wc.setAppId(PropKit.get("appId"));
		// wc.setAppSecret(PropKit.get("appSecret"));
		// WxaConfigKit.setWxaConfig(wc);
	}

	/**
	 * 配置处理器
	 */
	public void configHandler(Handlers me) {
//		me.add(new ContextPathHandler("base_path"));
	}
}
