#define deleteByIdList(table,idList)
delete from #(table) where id in (
  #for ( id : idList)
    #(for.index > 0 ? ", " ; "") #(id)
)
#end
#define findByKey(table,){

}



