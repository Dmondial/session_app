function fav_off(){
  const soundFavDelButton = document.querySelectorAll(".sound-fav-button-del");

  soundFavDelButton.forEach(function(t){
    t.addEventListener("click",(e) => {
      // e.preventDefault();
      // e.stopPropagation();
      // var e = e || window.event;
      // var elem = e.target || e.srcElement;
      // var elemForm = elem.children[0];
      // console.log(elem);
      // elemForm.submit();
      // const delId = elem.getAttribute("data-id");
      // console.log(t);
      // const XHR = new XMLHttpRequest();
      // XHR.open("POST", `/favorite_sounds/${delId}` , true);
      // XHR.responseType = "json";
      // debugger;
      // XHR.send();
      // debugger;
      // XHR.onload = () => {
      //   if (XHR.status != 200) {
      //     console.log(XHR.response);
      //     alert(`Error ${XHR.status}: ${XHR.statusText}`);
      //     return null;
      //   }
        // const item = XHR.response.favorite_sound;
        const userId = t.getAttribute("data-user-id");
        const soundId = t.getAttribute("data-sound-id");
        
        // const list = document.getElementById("list");
        let oya = t.parentNode;
        // const formText = document.getElementById("content");
        const HTML = `
          <a class="sound-fav-button">
            お気に入り
            <form id="sound-fav-link-form" class="sound-fav-link-form" action="/favorite_sounds"  method="post"><input type="hidden" name="authenticity_token" value="cAzVfDmcPA0IaogmfikAhUPXoAxTHHje/ODA/B7qN0nDXWI5v1RAojY/NH7E3+8TcsHUTaxmTgXdPjkeNZynnA==">
              <div class="form-input">
                <input value="${userId}" type="hidden" name="favorite_sound[user_id]" id="favorite_sound_user_id">
                <input value="${soundId}" type="hidden" name="favorite_sound[sound_id]" id="favorite_sound_sound_id">
                <input value="true" type="hidden" name="favorite_sound[favorite]" id="favorite_sound_favorite">
                <input type="submit" name="commit" value="送信" class="sound-fav-link-form-submit" id="sound-fav-link-form-submit" data-disable-with="送信">
              </div>
            </form>
          </a>
          `;
        while(oya.lastChild){
          oya.removeChild(oya.lastChild);
        }
        oya.insertAdjacentHTML("afterbegin", HTML);
        // formText.value = "";
      // };
      

    });
  });

};

// window.addEventListener("load", fav_off)
setInterval(fav_off, 1000);