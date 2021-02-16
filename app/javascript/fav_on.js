function fav_on(){
  const soundFavButton = document.querySelectorAll(".sound-fav-button");

  soundFavButton.forEach(function(t){
    t.addEventListener("click",(e) => {
      var e = e || window.event;
      var elem = e.target || e.srcElement;
      var elemForm = elem.children[0];
      console.log(elemForm);
      // elemForm.submit();
      const formData = new FormData(elemForm);
      const XHR = new XMLHttpRequest();
      XHR.open("POST", "/favorite_sounds" , true);
      XHR.responseType = "json";
      XHR.send(formData);
      XHR.onload = () => {
      if (XHR.status != 200) {
        alert(`Error ${XHR.status}: ${XHR.statusText}`);
        return null;
      }
      const item = XHR.response.favorite_sound;
      // const list = document.getElementById("list");
      let oya = t.parentNode;
      // const formText = document.getElementById("content");
      const HTML = `
      <a href="/favorite_sounds/${item.id}" class="sound-fav-button-del" data-method="delete" >お気に入り済み</a>
      `;
      while(oya.lastChild){
        oya.removeChild(oya.lastChild);
      }
      oya.insertAdjacentHTML("afterbegin", HTML);
      // formText.value = "";
      };

    });
  });

};

window.addEventListener("load", fav_on);

// setInterval(check, 1000);