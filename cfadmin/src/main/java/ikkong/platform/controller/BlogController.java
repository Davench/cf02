package ikkong.platform.controller;

import ikkong.core.jfinal.ext.kit.JsonKit;
import ikkong.platform.model.Blog;
import ikkong.platform.service.BlogService;
import ikkong.platform.service.impl.BlogServiceImpl;
import ikkong.system.controller.base.UrlPermissController;

/**
 * Generated by Blade.
 * 2017-12-28 17:46:55
 */
public class BlogController extends UrlPermissController {
	private static String CODE = "blog";
	private static String PERFIX = "blog";
	private static String LIST_SOURCE = "Blog.list";
	private static String BASE_PATH = "/platform/blog/";
	
	BlogService service = new BlogServiceImpl();
	
	public void index() {
		setAttr("code", CODE);
		render(BASE_PATH + "blog.html");
	}

	public void add() {
		setAttr("code", CODE);
		render(BASE_PATH + "blog_add.html");
	}

	public void edit() {
		String id = getPara(0);
		Blog blog = service.findById(id);
		setAttr("model", JsonKit.toJson(blog));
		setAttr("id", id);
		setAttr("code", CODE);
		render(BASE_PATH + "blog_edit.html");
	}

	public void view() {
		String id = getPara(0);
		Blog blog = service.findById(id);
		setAttr("model", JsonKit.toJson(blog));
		setAttr("id", id);
		setAttr("code", CODE);
		render(BASE_PATH + "blog_view.html");
	}

	public void list() {
		Object grid = paginate(LIST_SOURCE);
		renderJson(grid);
	}

	public void save() {
		Blog blog = mapping(PERFIX, Blog.class);
		boolean temp = service.save(blog);
		if (temp) {
			renderJson(success(SAVE_SUCCESS_MSG));
		} else {
			renderJson(error(SAVE_FAIL_MSG));
		}
	}

	public void update() {
		Blog blog = mapping(PERFIX, Blog.class);
		blog.setVersion(blog.getVersion()+1);
		boolean temp = service.update(blog);
		if (temp) {
			renderJson(success(UPDATE_SUCCESS_MSG));
		} else {
			renderJson(error(UPDATE_FAIL_MSG));
		}
	}

	public void remove() {
		String ids = getPara("ids");
		int cnt = service.deleteByIds(ids);
		if (cnt > 0) {
			renderJson(success(DEL_SUCCESS_MSG));
		} else {
			renderJson(error(DEL_FAIL_MSG));
		}
	}
}
