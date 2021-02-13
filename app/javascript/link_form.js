function link_form(){
  const soundFavButton = document.querySelectorAll(".sound-fav-button");

  soundFavButton.forEach(function(t){
    t.addEventListener("click",(e) => {
      var e = e || window.event;
      var elem = e.target || e.srcElement;
      var elemForm = elem.children[0];
      console.log(e);
      elemForm.submit();
    });
  });

};

window.addEventListener("load", link_form)