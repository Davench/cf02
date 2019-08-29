package com.pc.cf.model.service;

import com.jfinal.kit.Kv;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.SqlPara;
import com.pc.cf.constant.CommonConstant;
import com.pc.cf.model.*;
import com.pc.lon.util.Handler_Time;

import java.util.List;

/**
 * 本 demo 仅表达最为粗浅的 jfinal 用法，更为有价值的实用的企业级用法
 * 详见 JFinal 俱乐部: http://jfinal.com/club
 * <p>
 * BlogService
 * 所有 sql 与业务逻辑写在 Service 中，不要放在 Model 中，更不
 * 要放在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
public class DemandService {

    /**
     * 所有的 dao 对象也放在 Service 中
     */
    public static final Demand dao = new Demand().dao();

    public static Demand findById(int id) {
        return dao.findById(id);
    }

    public static Demand findDetailById(int id,int userId) {
        Demand demand = dao.findById(id);
        demand.setProvincial(CommonConstant.cities.get(Integer.valueOf(demand.getProvincial())));
        demand.setCities(CommonConstant.cities.get(Integer.valueOf(demand.getCities())));
        demand.setCounties(CommonConstant.cities.get(Integer.valueOf(demand.getCounties())));
        demand.put("data", Handler_Time.getInstance(demand.getCreatdate() * 1000l).getYYYYMMDD());
        demand.put("data2", Handler_Time.getInstance(demand.getEndtime() * 1000l).getYYYYMMDD());
        Company company = CompanyService.findById(demand.getCompanyid());
        if (company != null) {
            demand.put("company", company);
        } else {
            demand.put("company", null);
        }
        List<Inquiry> inquirys = InquiryService.getInquiryByDemand(demand.getId(),CommonConstant.type_demand);
        int count = 0;
            for (Inquiry inquiry:inquirys) {
                count+=inquiry.getPrice()*inquiry.getNumber();
        }
        demand.put("inquirys", inquirys);
        demand.put("allPrice",count);

        List<Quotedprice> quotedprices = QuotedPriceService.findByDemandId(userId,id);

        for (Quotedprice quotedprice:quotedprices) {

            if (quotedprice.getId() == demand.getQuotedpriceid()){
                demand.put("isTaked",true);
            }
            Company company1 = CompanyService.findById(quotedprice.getCompanyid());
            quotedprice.put("company",company1);
            Enclosure enclosure = EnclosureService.getEnclosureByDemand(quotedprice.getId(),CommonConstant.file_take_demand);
            quotedprice.put("enclosure",enclosure);
        }
        long quotecount = QuotedPriceService.findCountByDemandId(id);

        Enclosure enclosure = EnclosureService.getEnclosureByDemand(demand.getId(),CommonConstant.file_release_demand);
        demand.put("enclosure", enclosure);
        demand.put("quotecount", quotecount);
        demand.put("quotedprice",quotedprices);
        return demand;
    }

    public static Demand findDetailById(int id) {
        Demand demand = dao.findById(id);
        demand.setProvincial(CommonConstant.cities.get(Integer.valueOf(demand.getProvincial())));
        demand.setCities(CommonConstant.cities.get(Integer.valueOf(demand.getCities())));
        demand.setCounties(CommonConstant.cities.get(Integer.valueOf(demand.getCounties())));
        demand.put("data", Handler_Time.getInstance(demand.getCreatdate() * 1000l).getYYYYMMDD());
        demand.put("data2", Handler_Time.getInstance(demand.getEndtime() * 1000l).getYYYYMMDD());
        Company company = CompanyService.findById(demand.getCompanyid());
        if (company != null) {
            demand.put("company", company);
        } else {
            demand.put("company", null);
        }
        List<Inquiry> inquirys = InquiryService.getInquiryByDemand(demand.getId(),CommonConstant.type_demand);
        int count = 0;
        for (Inquiry inquiry:inquirys) {
            count+=inquiry.getPrice()*inquiry.getNumber();
        }
        demand.put("inquirys", inquirys);
        demand.put("allPrice",count);

        List<Quotedprice> quotedprices = QuotedPriceService.findByDemandId(id);

        for (Quotedprice quotedprice:quotedprices) {
            Company company1 = CompanyService.findById(quotedprice.getCompanyid());
            quotedprice.put("company",company1);
            Enclosure enclosure = EnclosureService.getEnclosureByDemand(quotedprice.getId(),CommonConstant.file_take_demand);
            quotedprice.put("enclosure",enclosure);
        }
        long quotecount = QuotedPriceService.findCountByDemandId(id);

        Enclosure enclosure = EnclosureService.getEnclosureByDemand(demand.getId(),CommonConstant.file_release_demand);
        demand.put("enclosure", enclosure);
        demand.put("quotecount", quotecount);
        demand.put("quotedprice",quotedprices);
        return demand;
    }

    public static Demand findMyDetailById(int id) {
        Demand demand = dao.findById(id);
        demand.setProvincial(CommonConstant.cities.get(Integer.valueOf(demand.getProvincial())));
        demand.setCities(CommonConstant.cities.get(Integer.valueOf(demand.getCities())));
        demand.setCounties(CommonConstant.cities.get(Integer.valueOf(demand.getCounties())));
        demand.put("data", Handler_Time.getInstance(demand.getCreatdate() * 1000l).getYYYYMMDD());
        demand.put("data2", Handler_Time.getInstance(demand.getEndtime() * 1000l).getYYYYMMDD());
        Company company = CompanyService.findById(demand.getCompanyid());
        if (company != null) {
            demand.put("company", company);
        } else {
            demand.put("company", null);
        }
        List<Inquiry> inquirys = InquiryService.getInquiryByDemand(demand.getId(),CommonConstant.type_demand);
        int count = 0;
        for (Inquiry inquiry:inquirys) {
            count+=inquiry.getPrice()*inquiry.getNumber();
        }
        demand.put("inquirys", inquirys);
        demand.put("allPrice",count);

        List<Quotedprice> quotedprices = QuotedPriceService.findByDemandId(id);

        for (Quotedprice quotedprice:quotedprices) {
            Company company1 = CompanyService.findById(quotedprice.getCompanyid());
            quotedprice.put("company",company1);
            Enclosure enclosure = EnclosureService.getEnclosureByDemand(quotedprice.getId(),CommonConstant.file_take_demand);
            quotedprice.put("enclosure",enclosure);
        }
        long quotecount = QuotedPriceService.findCountByDemandId(id);
        Enclosure enclosure = EnclosureService.getEnclosureByDemand(demand.getId(),CommonConstant.file_release_demand);
        demand.put("enclosure", enclosure);
        demand.put("quotecount", quotecount);
        long time = demand.getEndtime()-Handler_Time.getInstance().getTimeInSeconds();
        demand.put("time",time);
        demand.put("limitTime",Handler_Time.formatDuring(time*1000));
        demand.put("quotedprice",quotedprices);
        return demand;
    }

    /**
     * @param demandType     需求类型
     * @param companyType    公司类型
     * @param operation      经营方式
     * @param authentication 是否认证
     * @return
     */
    public static Page<Demand> listPage(String key, int demandType, int companyType, int operation, int authentication,int scale,int goodId,int page) {
        //authentication = #para(0) and demandtype1 = #para(1) and companyid in (select id from company where type = 0) order by id desc
        Kv cond = Kv.create();

        if (key!=null&&key.trim().length()!=0){
            cond.set(" title like BINARY  ","'%"+key+"%'");
        }

        if (demandType!=-1){
            cond.set(" demandtype1 = ",demandType);
        }

        if (companyType!=-1||operation!=-1||authentication!=-1||scale!=-1||goodId!=0){
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(" select id from company where");
            if (companyType!=-1){
                stringBuffer.append(" type = "+companyType);
            }
            if (operation!=-1){
                if (!stringBuffer.toString().endsWith("where")){
                    stringBuffer.append(" and ");
                }
                stringBuffer.append(" operation = "+operation);
            }
            if (authentication!=-1){
                if (!stringBuffer.toString().endsWith("where")){
                    stringBuffer.append(" and ");
                }
                stringBuffer.append(" authentication = "+authentication);
            }
            if (scale!=-1){
                if (!stringBuffer.toString().endsWith("where")){
                    stringBuffer.append(" and ");
                }
                stringBuffer.append(" scale = "+scale);
            }
            String sql = stringBuffer.toString();
            if (!sql.endsWith("where")){
                cond.set("companyid in ","("+sql+")");
            }

            if (goodId!=0)
            cond.set(" id in ","( select demandid from inquiry where goodId = "+goodId+" and type = 0 )");
        }
        SqlPara sql = Db.getSqlPara("demand.page",Kv.by("cond", cond));
        System.out.println(key+sql);
        Page<Demand> demandPage = dao.paginate(page,CommonConstant.limit,sql);
        return demandPage;
    }

    public static List<Demand> findLimit10() {
        SqlPara sql = Db.getSqlPara("demand.getDemandLimit");
        return dao.find(sql);
    }

    public static List<Demand> findLimit3() {
        return dao.find("select * from demand where type = 1 order by id desc limit 3");
    }

    public static List<Demand> findByCompanyLimit3(int companyId) {
        return dao.find("select * from demand where companyId = "+companyId+" order by id desc limit 3");
    }

    public static long findCountBycompanyId(int companyId){
        return Db.queryLong("select count(*)  from demand where companyId = "+companyId);
    }

    public static Page<Demand> findByCompany(int companyId,int page) {
        SqlPara sql = Db.getSqlPara("demand.getPage",companyId);
        return dao.paginate(page,CommonConstant.limit,sql);
    }

    public static List<Demand> findByUserLimit3(int companyId) {
        return dao.find("select * from demand where companyId = "+companyId+" order by id desc limit 3");
    }

    public static Page<Demand> findCountByDemandId(int userId,int page){
        SqlPara sql = Db.getSqlPara("demand.getDemandByUser",userId);
        return dao.paginate(page,CommonConstant.limit,sql);
    }
}
