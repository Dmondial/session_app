function audio_play(content) {
  const audioFile = content.getElementsByTagName("audio")
  for (var i = 0;  i < audioFile.length;  i++){
  audioFile[i].play();
  };
};

function audio_pause(content) {
  const audioFile = content.getElementsByTagName("audio")
  for (var i = 0;  i < audioFile.length;  i++){
  audioFile[i].pause();
  };
};

function audio_reset(content) {
  const audioFile = content.getElementsByTagName("audio")
  for (var i = 0;  i < audioFile.length;  i++){
  audioFile[i].pause();
  audioFile[i].currentTime = 0;
  };
};

function audio_control() {
  const sessionContent = document.querySelectorAll(".session_index_content");
  sessionContent.forEach(function(content){
    content.addEventListener("click",(e) => {
      var e = e || window.event;
      var elem = e.target || e.srcElement;

      if (elem.id == "audio-play"){
      audio_play(content);
      }else if(elem.id == "audio-pause"){
        audio_pause(content);
      }else if (elem.id == "audio-reset"){
        audio_reset(content);
      };
      
    });
  });
};

window.addEventListener("load", audio_control)
// setInterval(audio_control, 1000);