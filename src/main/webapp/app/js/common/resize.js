/**
 * Created by zww on 2017/5/18.
 */
$(document).ready(function(){
    changeGridHeight();

    $(".mini-checkcolumn .mini-grid-headerCell-nowrap").click(function(){
        $(this).toggleClass("select");
    });
});
function changeGridHeight(){
    $(".mini-tree-nowrap").height($(".mini-layout-region-body ").height() - $(".searchClass").height() - 25);

    var gridHeight=$(".body_main").height() - $(".search-box").height() - 18;
    $("#datagrid1").height(gridHeight);
    $(".body1").height($(".list-body").height() - 11);
    $(".body1 #datagrid1").height(gridHeight - 10);
    var height = $(".pop-list").height() - 50;
    $(".pop-list .mini-layout").css("height",height);
    $(".pop-list .mini-tree-nowrap").height(height - 90);

    $(".intro-info").css("maxHeight",$(".intro-body").height() - 131);
    $(".intro-main").height($(".intro-body").height() - $(".sys-intro").height() - 24);

    $(".tree-div").height($(".tree-body1").height() - 75);
    $(".tree-div .mini-tree-nowrap").height($(".tree-body1").height() - 90);
}
window.onresize=function(){
    changeGridHeight();
};
