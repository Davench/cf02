#sql("getDemandLimit")
select * from demand order by id desc limit 6
#end
#sql("page")
select * from demand
	#for(x:cond)
	    #(for.index == 0 ? "where" : "and")
		  #(x.key) #(x.value)
	#end
  order by id desc
#end

#sql("getPage")
select * from demand where companyId = #para(0) order by id desc
#end
#sql("getDemandByUser")
select * from  demand where id in ( select demandid from quotedprice where userid = #para(0)) order by id desc
#end




