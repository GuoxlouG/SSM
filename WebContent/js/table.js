/*表格分页*/
function Page(iAbsolute,sTableId,sTBodyId,page)
{
    this.absolute = iAbsolute; //每页最大记录数
    this.tableId = sTableId;
    this.tBodyId = sTBodyId;
    this.rowCount = 0;//记录数
    this.pageCount = 0;//页数
    this.pageIndex = 0;//页索引
    this.__oTable__ = null;//表格引用
    this.__oTBody__ = null;//要分页内容
    this.__dataRows__ = 0;//记录行引用
    this.__oldTBody__ = null;
    this.__init__(); //初始化;
};
/**//*
 初始化
 */
Page.prototype.__init__ = function(){
    this.__oTable__ = document.getElementById(this.tableId);//获取table引用
    this.__oTBody__ = this.__oTable__.tBodies[this.tBodyId];//获取tBody引用
    this.__dataRows__ = this.__oTBody__.rows;
    this.rowCount = this.__dataRows__.length;
    try{
        this.absolute = (this.absolute <= 0) || (this.absolute>this.rowCount) ? this.rowCount : this.absolute;
        this.pageCount = parseInt(this.rowCount%this.absolute == 0
            ? this.rowCount/this.absolute : this.rowCount/this.absolute+1);
    }catch(exception){}
    this.__updateTableRows__();
};
Page.prototype.GetBar=function(obj)
{
    var bar= document.getElementById(obj.id);
    bar.innerHTML= "每页"+this.absolute+"条/共"+this.rowCount+"条";// 第2页/共6页 首页 上一页 1 2 3 4 5 6 下一页 末页
}
/**//*
 下一页
 */
Page.prototype.nextPage = function(){
    if(this.pageIndex + 1 < this.pageCount){
        this.pageIndex += 1;
        this.__updateTableRows__();
    }
};
/**//*
 上一页
 */
Page.prototype.prePage = function(){
    if(this.pageIndex >= 1){
        this.pageIndex -= 1;
        this.__updateTableRows__();
    }
};
/**//*
 首页
 */
Page.prototype.firstPage = function(){
    if(this.pageIndex != 0){
        this.pageIndex = 0;
        this.__updateTableRows__();
    }
};
/**//*
 尾页
 */
Page.prototype.lastPage = function(){
    if(this.pageIndex+1 != this.pageCount){
        this.pageIndex = this.pageCount - 1;
        this.__updateTableRows__();
    }
};
/**//*
 页定位方法
 */
Page.prototype.aimPage = function(){
    var abc = document.getElementById("pageno");
    var iPageIndex = abc.value;
    var iPageIndex = iPageIndex*1;
    if(iPageIndex > this.pageCount-1){
        this.pageIndex = this.pageCount -1;
    }else if(iPageIndex < 0){
        this.pageIndex = 0;
    }else{
        this.pageIndex = iPageIndex-1;
    }
    this.__updateTableRows__();
};
/**//*
 执行分页时，更新显示表格内容
 */
Page.prototype.__updateTableRows__ = function(){
    var iCurrentRowCount = this.absolute * this.pageIndex;
    var iMoreRow = this.absolute+iCurrentRowCount > this.rowCount ? this.absolute+iCurrentRowCount - this.rowCount : 0;
    var tempRows = this.__cloneRows__();
    var removedTBody = this.__oTable__.removeChild(this.__oTBody__);
    var newTBody = document.createElement("TBODY");
    newTBody.setAttribute("id", this.tBodyId);
    for(var i=iCurrentRowCount; i < this.absolute+iCurrentRowCount-iMoreRow; i++){
        newTBody.appendChild(tempRows[i]);
    }
    this.__oTable__.appendChild(newTBody);
    this.__dataRows__ = tempRows;
    this.__oTBody__ = newTBody;
//页脚显示分
    var divFood = document.getElementById("divFood");//分页工具栏
    divFood.innerHTML="";
    var rightBar = document.createElement("divFood");
    rightBar.setAttribute("display","");
    rightBar.setAttribute("float","left");
    rightBar.innerHTML="共"+this.rowCount+"条数据 , "+(this.pageIndex+1)+"页/"+this.pageCount+"页";
    var isOK="Y";
    var cssColor="";
    divFood.appendChild(rightBar);
//页脚显示分页结
};
/**//*
 克隆原始操作行集合
 */
Page.prototype.__cloneRows__ = function(){
    var tempRows = [];
    for(var i=0; i<this.__dataRows__.length; i++){
        tempRows[i] = this.__dataRows__[i].cloneNode(1);
    }
    return tempRows;
};




/*表格排序*/
//$(function(){
//    var pk=1;
//    $(".head td").click(function(){
//        // 把要排序的内容添加到数组里
//        var tIndex=parseInt($(this).index());
//        var valueArray=new Array();
//        var p=0;
//        for(var i=1; i<$("table tr").length; i++){
//
//            if(tIndex!=0){
//                valueArray[p]=parseInt($("table tr:eq("+i+") td").eq(tIndex).html());
//            }else{
//                valueArray[p]=$("table tr:eq("+i+") td").eq(tIndex).html();
//            }
//
//            p++;
//
//        }
//
//        //数据排序
//        if(pk==1){
//            valueArray.sort(function(a,b){ return a<b ? -1:1})
//            pk=2
//        }else{
//            valueArray.sort(function(a,b){ return a>b ? -1:1})
//            pk=1
//        }
//
//        //匹配内容	加入到一个隐藏的排序div里+-
//        for(var i=0; i<valueArray.length; i++){
//            for(var d=1; d<$("table tr").length; d++){
//                var valueText= tIndex!=0 ? parseInt($("table tr:eq("+d+") td").eq(tIndex).html()):$("table tr:eq("+d+") td").eq(tIndex).html();
//                if(valueArray[i]==valueText){
//                    $("table tr").eq(d).clone().appendTo("#cs_table2")
//                }
//            }
//        }
//        //重新整理html 排序，添加到视图里
//        var titleClone=$("table tr").eq(0).clone(true);
//        $("table").html("").append(titleClone);
//
//        $("table").append($("#cs_table2").html())
//
//        $("#cs_table2").html("");
//
//
//
//    })
//
//})