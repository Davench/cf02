#sql("getEnclosure")
select * from enclosure where demandid = #para(0) and type = #para(1)
#end



