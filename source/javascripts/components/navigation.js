$(function() {

  console.log("TEST");

  $(".navigation__primary").headroom(
    {
      // vertical offset in px before element is first unpinned
      offset : 0,
      // scroll tolerance in px before state changes
      tolerance : 0,
      // or you can specify tolerance individually for up/down scroll
      tolerance : {
          up : 5,
          down : 0
      },
      // css classes to apply
      classes : {
          // when element is initialised
          initial : "headroom",
          // when scrolling up
          pinned : "headroom--pinned",
          // when scrolling down
          unpinned : "headroom--unpinned",
          // when above offset
          top : "headroom--top",
          // when below offset
          notTop : "headroom--not-top"
      },
      // element to listen to scroll events on, defaults to `window`
      scroller : window,
      // callback when pinned, `this` is headroom object
      onPin : function() {},
      // callback when unpinned, `this` is headroom object
      onUnpin : function() {},
      // callback when above offset, `this` is headroom object
      onTop : function() {},
      // callback when below offset, `this` is headroom object
      onNotTop : function() {},
    }
  );

})
