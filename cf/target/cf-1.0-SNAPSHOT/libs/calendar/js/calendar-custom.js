$(function(){
    /*
      
     */
    var cld = cld_init( ".cld-container" );
    function cld_init( elem ){
        var me = this;
        me.cld = $(elem);
        me.cldClose = me.cld.find(".cld-close");
        me.cldPrev = me.cld.find(".cld-prev");
        me.cldNext = me.cld.find(".cld-next");
        me.cldCurr = me.cld.find(".cld-current");
        me.cldNow = new Date();
        //模拟数据
        me.cldRest = function(){
            me.now = new Date();
            me.yy = now.getFullYear();
            me.mm = now.getMonth();
            me.dd = now.getDate();
            me.d = now.getDay();
            me.mm_real = mm;
        }
        me.cld_real_month = function(){
            me.mm_real = me.mm + 1;
            if( me.mm_real < 10 ){
                me.cldCurr.html(me.yy + "年" + " 0" + me.mm_real+"月");
            }else{
                me.cldCurr.html(me.yy + "年" + " " + me.mm_real+"月");
            }

        }
        me.cldPrev.click( function(){
            if(me.mm<=0){
                me.mm = 11;
                me.yy = me.yy - 1;
            }else{
                me.mm--;
            }
            me.cld_update();
        })
        me.cldNext.click( function(){
            if(me.mm>=11){
                me.mm = 0;
                me.yy = me.yy + 1;
            }else{
                me.mm++;
            }
            me.cld_update();
        })
        me.cld_update = function(){
            $(".cld-days").children().remove();
            me.cld_curr = new Date(me.yy,me.mm,1);
            me.cld_first = me.cld_curr.getDay();
            me.arr_days=new Array(31,28 + me.cld_is_leap(me.yy),31,30,31,31,30,31,30,31,30,31);
            me.cld_first_num = 6;
            var i,j,idx,date_str;
            for(i = 0;i< me.cld_first_num;i++){
                $(".cld-days").append("<ul class=\"cld-row\">" + "</ul>")
                for(j = 0;j < 7;j++){
                    idx = i*7 + j;
                    date_str = idx - me.cld_first + 1;
                    (date_str<=0 || date_str>me.arr_days[me.mm]) ? date_str=" " : date_str=idx-me.cld_first+1;
                    $(".cld-row").last().append(" <li class=\"cld-col\">"+
                        "                           <div class=\"cld-num\">"+date_str+"</div>" +
                        "                           <div class=\"cld-sign\"></div>" +
                        "                         </li>");
                }
            }
            me.cld_real_month();
        }
        me.cld_is_leap = function(year){
            var res;
            return (year%100==0?res=(year%400==0?1:0):res=(year%4==0?1:0));
        }
        me.cld_ajax_data = function(){
            me.cld_data = [
                {  }
            ]
        }
        me.cldRest();
        me.cld_update();
    }
})