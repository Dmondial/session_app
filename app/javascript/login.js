function audio_type_e() {
  const typeButton = document.getElementById("user_email")
  const audioFile = document.getElementById("audio_typewriter")
  typeButton.addEventListener("keyup",() => {
    audioFile.currentTime = 0;
    audioFile.play();
  });
};

function audio_type_p() {
  const typeButton = document.getElementById("user_password")
  const audioFile = document.getElementById("audio_typewriter")
  typeButton.addEventListener("keyup",() => {
    audioFile.currentTime = 0;
    audioFile.play();
  });

};

function audio_sub() {
  const subButton = document.getElementById("sub")
  const subSubButton = document.getElementById("sub-button")
  const audioFile = document.getElementById("audio_sub")
  subSubButton.addEventListener("click",() => {
    const funny = document.getElementById("funny");
    funny.removeAttribute("style");
    audioFile.currentTime = 0;
    audioFile.play();
    audioFile.addEventListener("ended",()=>{
      subButton.click();
    });
    
  });

};

window.addEventListener("load", audio_type_e)
window.addEventListener("load", audio_type_p)
window.addEventListener("load", audio_sub)