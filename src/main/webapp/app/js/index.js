/**************************************
 * @Description: 首页脚本文件
 * @Author: syn
 * @Date: 2018/5/21.
 ************************************/
$(function(){
    var swiper = new Swiper('.swiper-container', {
        autoplay: {
            delay: 2000,
            stopOnLastSlide: false,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.swiper-pagination',
        },
    });
});
