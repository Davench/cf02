#sql("getByName")
select * from userinfo where number = #para(0)
#end
#sql("getById")
select * from userinfo where id = #para(0)
#end
#sql("getByNamePhone")
select * from userinfo where number = #para(0) or phone = #para(1)
#end
#sql("getByPhone")
select * from userinfo where phone = #para(0)
#end



