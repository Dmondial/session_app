function audio_play(content) {
  // const playButton = content.getElementsByClassName ("audio-play")
  const audioFile = content.getElementsByTagName("audio")
  // playButton.addEventListener("click",() => {
    for (var i = 0;  i < audioFile.length;  i++){
    audioFile[i].play();
    };
  // });
};

function audio_pause(content) {
  // const pauseButton = content.getElementsByClassName ("audio-pause")
  const audioFile = content.getElementsByTagName("audio")
  // pauseButton.addEventListener("click",() => {
    for (var i = 0;  i < audioFile.length;  i++){
    audioFile[i].pause();
    };
  // });
};

function audio_reset(content) {
  // const resetButton = content.getElementsByClassName ("audio-reset")
  const audioFile = content.getElementsByTagName("audio")
  // pauseButton.addEventListener("click",() => {
    for (var i = 0;  i < audioFile.length;  i++){
    audioFile[i].pause();
    audioFile[i].currentTime = 0;
    };
  // });

};

function audio_control() {
  const sessionContent = document.querySelectorAll(".session_index_content");
  sessionContent.forEach(function(content){
    content.addEventListener("click",(e) => {
      var e = e || window.event;
      var elem = e.target || e.srcElement;
      // let inSound = content.getElementsByTagName("audio")
      // var elemForm = elem.children[0];
      // console.log(inSound);
      // console.log(elem);
      // console.log(content.getElementsByClassName ("audio-play"));
      const playButton = content.getElementsByClassName ("audio-play")
      const pauseButton = content.getElementsByClassName ("audio-pause")
      const resetButton = content.getElementsByClassName ("audio-reset")
debugger;
      if (playButton){
      audio_play(content);
      }else if(pauseButton){
        audio_pause(content);
      }else if (resetButton){
        audio_reset(content);
      };
      
    });
  });
};

// window.addEventListener("load", audio_play)
// window.addEventListener("load", audio_pause)
// window.addEventListener("load", audio_reset)
// window.addEventListener("load", audio_control)
setInterval(audio_control, 1000);