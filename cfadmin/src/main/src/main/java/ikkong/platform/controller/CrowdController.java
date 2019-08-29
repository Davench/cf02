package ikkong.platform.controller;

import java.util.Map;
import ikkong.core.base.BaseController;
import ikkong.core.jfinal.ext.kit.JsonKit;
import ikkong.system.controller.base.UrlPermissController;
import ikkong.platform.model.Crowd;
import ikkong.platform.service.CrowdService;
import ikkong.platform.service.impl.CrowdServiceImpl;

/**
 * Generated by Blade.
 * 2018-01-28 15:39:09
 */
public class CrowdController extends UrlPermissController {
	private static String CODE = "crowd";
	private static String PERFIX = "crowd";
	private static String LIST_SOURCE = "Crowd.list";
	private static String BASE_PATH = "/platform/crowd/";
	
	CrowdService service = new CrowdServiceImpl();
	
	public void index() {
		setAttr("code", CODE);
		render(BASE_PATH + "crowd.html");
	}

	public void add() {
		setAttr("code", CODE);
		render(BASE_PATH + "crowd_add.html");
	}

	public void edit() {
		String id = getPara(0);
		Crowd crowd = service.findById(id);
		setAttr("model", JsonKit.toJson(crowd));
		setAttr("id", id);
		setAttr("code", CODE);
		render(BASE_PATH + "crowd_edit.html");
	}

	public void view() {
		String id = getPara(0);
		Crowd crowd = service.findById(id);
		setAttr("model", JsonKit.toJson(crowd));
		setAttr("id", id);
		setAttr("code", CODE);
		render(BASE_PATH + "crowd_view.html");
	}

	public void list() {
		Object grid = paginate(LIST_SOURCE);
		renderJson(grid);
	}

	public void save() {
		Crowd crowd = mapping(PERFIX, Crowd.class);
		boolean temp = service.save(crowd);
		if (temp) {
			renderJson(success(SAVE_SUCCESS_MSG));
		} else {
			renderJson(error(SAVE_FAIL_MSG));
		}
	}

	public void update() {
		Crowd crowd = mapping(PERFIX, Crowd.class);
		crowd.setVersion(crowd.getVersion()+1);
		boolean temp = service.update(crowd);
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
