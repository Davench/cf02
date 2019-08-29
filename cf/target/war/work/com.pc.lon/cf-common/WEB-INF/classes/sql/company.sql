#sql("getById")
select * from company where id = #para(0)
#end
#sql("getLimit")
select * from company order by id desc limit 6
#end



