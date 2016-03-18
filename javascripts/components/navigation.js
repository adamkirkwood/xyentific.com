$(function() {

  $(".navigation__primary").headroom(
    {
      offset : 5,
      tolerance: 50,
      classes : {
          initial : "headroom",
          pinned : "headroom--pinned",
          unpinned : "headroom--unpinned",
          top : "headroom--top",
          notTop : "headroom--not-top"
      },
      scroller : window,
      onPin : function() {},
      onUnpin : function() {},
      onTop : function() {},
      onNotTop : function() {},
    }
  );

  $("img").unveil(10, function() {
    $(this).load(function() {
      this.style.opacity = 1;
    });
  });

})
;
