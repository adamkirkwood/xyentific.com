$(function() {

  $(".navigation__primary").headroom(
    {
      offset : 205,
      tolerance: 5,
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

})
