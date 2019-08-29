package ikkong.platform.controller;

import ikkong.core.dao.Blade;
import ikkong.core.jfinal.ext.kit.JsonKit;
import ikkong.core.toolbox.Record;
import ikkong.platform.meta.intercept.CompanyIntercept;
import ikkong.platform.model.Authentication;
import ikkong.platform.model.Company;
import ikkong.platform.service.AuthenticationService;
import ikkong.platform.service.CompanyService;
import ikkong.platform.service.impl.AuthenticationServiceImpl;
import ikkong.platform.service.impl.CompanyServiceImpl;
import ikkong.system.controller.base.UrlPermissController;

public class CompanyController extends UrlPermissController {
    private static String CODE = "company";
    private static String PERFIX = "company";
    private static String LIST_SOURCE = "Company.list";
    private static String BASE_PATH = "/platform/company/";

    CompanyService service = new CompanyServiceImpl();
    AuthenticationService authenticationService = new AuthenticationServiceImpl();

    public void index() {
        setAttr("code", CODE);
        render(BASE_PATH + "company.html");
    }

    public void add() {
        setAttr("code", CODE);
        render(BASE_PATH + "company_add.html");
    }

    public void edit() {
        String id = getPara(0);
        Company blog = service.findById(id);
        setAttr("model", JsonKit.toJson(blog));
        setAttr("id", id);
        setAttr("code", CODE);
        render(BASE_PATH + "company_edit.html");
    }

    public void view() {
        String id = getPara(0);
        Company blog = service.findById(id);
        Record maps = Record.parse(blog);
//        maps.set("deptName", Func.getDeptName(user.getDeptid()))
//                .set("roleName", Func.getRoleName(user.getRoleid()))
//                .set("sexName", Func.getDictName(101, user.getSex()));
        String url = getRequest().getScheme()+"://"+getRequest().getServerName()+":"+getRequest().getServerPort();
        maps.put("url", url+"/upload/"+blog.getPhoto());
        setAttr("model", JsonKit.toJson(maps));
        setAttr("id", id);
        setAttr("code", CODE);
        render(BASE_PATH + "company_view.html");
    }

    public void info() {
        String id = getPara(0);
        Record updateMap = Record.create().set("id", id);
        Authentication authentication = authenticationService.findFirst(" select * from authentication where companyId  = #{id}",updateMap);
        if (authentication == null){
            setAttr("model", JsonKit.toJson(Record.parse(new Authentication())));
            setAttr("id", id);
            setAttr("code", CODE);
            render(BASE_PATH + "authentication_view.html");
            return;
        }
        Record maps = Record.parse(authentication);
        String url = getRequest().getScheme()+"://"+getRequest().getServerName()+":"+getRequest().getServerPort();
        maps.put("photoUrl", url+"/upload/"+authentication.getPhoto());
        maps.put("cardPhotoUrl", url+"/upload/"+authentication.getCardPhoto());
        maps.put("taxCardUrl", url+"/upload/"+authentication.getTaxCard());
        maps.put("organizationCardUrl", url+"/upload/"+authentication.getOrganizationCard());
        setAttr("model", JsonKit.toJson(maps));
        setAttr("id", id);
        setAttr("code", CODE);
        render(BASE_PATH + "authentication_view.html");
    }


    public void list() {
        Object grid = paginate(LIST_SOURCE, new CompanyIntercept());
        renderJson(grid);
    }

    public void save() {
        Company blog = mapping(PERFIX, Company.class);
        boolean temp = service.save(blog);
        if (temp) {
            renderJson(success(SAVE_SUCCESS_MSG));
        } else {
            renderJson(error(SAVE_FAIL_MSG));
        }
    }

    public void update() {
        Company blog = mapping(PERFIX, Company.class);
        boolean temp = service.update(blog);
        if (temp) {
            renderJson(success(UPDATE_SUCCESS_MSG));
        } else {
            renderJson(error(UPDATE_FAIL_MSG));
        }
    }

    public void remove() {
        String ids = getPara("ids");
        boolean temp = Blade.create(Company.class).updateBy("status = #{status}", "id in (#{join(ids)})", Record.create().set("status", 5).set("ids", getPara("ids").split(",")));
        if (temp) {
            renderJson(success(DEL_SUCCESS_MSG));
        } else {
            renderJson(error(DEL_FAIL_MSG));
        }
    }

    public void restore() {
        Record updateMap = Record.create().set("status", 3).set("ids", getPara("ids").split(","));
        boolean temp = Blade.create(Company.class).updateBy("status = #{status}", "id in (#{join(ids)})", updateMap);
        if (temp) {
            renderJson(success("还原成功!"));
        } else {
            renderJson(error("还原失败!"));
        }
    }

    public void auditOk() {
        Blade blade = Blade.create(Company.class);
        Record countMap = Record.create().set("ids", getPara("ids").split(","));
        Record updateMap = Record.create().set("status", 1).set("ids", getPara("ids").split(","));
        boolean temp = blade.updateBy("status = #{status}", "id in (#{join(ids)})", updateMap);
        if (temp) {
            renderJson(success("审核成功!"));
        } else {
            renderJson(error("审核失败!"));
        }
    }

    public void auditRefuse	() {
        Record updateMap = Record.create().set("status", 4).set("ids", getPara("ids").split(","));
        boolean temp = Blade.create(Company.class).updateBy("status = #{status}", "id in (#{join(ids)})", updateMap);
        if (temp) {
            renderJson(success("审核拒绝成功!"));
        } else {
            renderJson(error("审核拒绝失败!"));
        }
    }

    public void autok() {
        Company company = service.findById(getPara("ids").split(",")[0]);
        if (company.getAuthentication()!=CompanyIntercept.authentication_waiting){
            renderJson(error("该用户未提交认证申请!"));
            return;
        }
        Blade blade = Blade.create(Company.class);
        Record countMap = Record.create().set("ids", getPara("ids").split(","));
        Record updateMap = Record.create().set("status", CompanyIntercept.authentication_yes).set("ids", getPara("ids").split(","));
        boolean temp = blade.updateBy("authentication = #{status}", "id in (#{join(ids)})", updateMap);
        if (temp) {
            renderJson(success("认证成功!"));
        } else {
            renderJson(error("认证失败!"));
        }
    }

    public void autfail() {
        Company company = service.findById(getPara("ids").split(",")[0]);
        if (company.getAuthentication()!=CompanyIntercept.authentication_waiting){
            renderJson(error("该用户未提交认证申请!"));
            return;
        }
        Record updateMap = Record.create().set("status", CompanyIntercept.authentication_failure).set("ids", getPara("ids").split(","));
        boolean temp = Blade.create(Company.class).updateBy("status = #{status}", "id in (#{join(ids)})", updateMap);
        if (temp) {
            renderJson(success("认证拒绝成功!"));
        } else {
            renderJson(error("认证拒绝失败!"));
        }
    }
}
