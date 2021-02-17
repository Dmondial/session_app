function fav_off(){
  const soundFavDelButton = document.querySelectorAll(".sound-fav-button-del");

  soundFavDelButton.forEach(function(t){
    t.addEventListener("click",(e) => {
        const userId = t.parentNode.getAttribute("data-user-id");
        const soundId = t.parentNode.getAttribute("data-sound-id");
        
        let oya = t.parentNode;
        const HTML = `
            <form id="sound-fav-link-form" class="sound-fav-link-form" action="/favorite_sounds"  method="post"><input type="hidden" name="authenticity_token" value="cAzVfDmcPA0IaogmfikAhUPXoAxTHHje/ODA/B7qN0nDXWI5v1RAojY/NH7E3+8TcsHUTaxmTgXdPjkeNZynnA==">
              <div class="form-input">
                <input value="${userId}" type="hidden" name="favorite_sound[user_id]" id="favorite_sound_user_id">
                <input value="${soundId}" type="hidden" name="favorite_sound[sound_id]" id="favorite_sound_sound_id">
                <input value="true" type="hidden" name="favorite_sound[favorite]" id="favorite_sound_favorite">
                <input type="submit" name="commit" value="お気に入りに登録" class="sound-fav-link-form-submit" id="sound-fav-link-form-submit" data-disable-with="送信">
              </div>
            </form>
          `;
        while(oya.lastChild){
          oya.removeChild(oya.lastChild);
        }
        oya.insertAdjacentHTML("afterbegin", HTML);
      
    });
  });

};

// window.addEventListener("load", fav_off)
setInterval(fav_off, 1000);