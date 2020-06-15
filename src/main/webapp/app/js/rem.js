(function (doc, win) {

    // let winWidth =  document.body.clientWidth;
    var sUserAgent = navigator.userAgent;
    var phoneFlag = sUserAgent.indexOf('Android') > -1 || sUserAgent.indexOf('iPhone') > -1 || sUserAgent.indexOf('iPad') > -1 || sUserAgent.indexOf('iPod') > -1 || sUserAgent.indexOf('Symbian') > -1;
    var docEl = doc.documentElement,
        resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
        recalc = function () {

            var clientWidth = docEl.clientWidth;
            if (!clientWidth) return;
            if(clientWidth>=750 && phoneFlag){  // 移动端高分辨率
                docEl.style.fontSize = '100px';
            }else if(clientWidth <= 1440 && !phoneFlag){  // 非移动端 低分辨率
              docEl.style.fontSize = '46px';
              document.getElementById("app").style.maxWidth = 345+"px";
            }else if(clientWidth > 1440 && !phoneFlag){  //  // 非移动端 高分辨率
              docEl.style.fontSize = '50px';
              document.getElementById("app").style.maxWidth = 390+"px";
            }else{
              docEl.style.fontSize = 100 * (clientWidth / 750) + 'px';
            }
        };

    if (!doc.addEventListener) return;
    win.addEventListener(resizeEvt, recalc, false);
    doc.addEventListener('DOMContentLoaded', recalc, false);
})(document, window);

