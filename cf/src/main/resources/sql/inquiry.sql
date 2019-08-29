#sql("getInquiry")
select * from inquiry where demandid = #para(0) and type = #para(1)
#end



