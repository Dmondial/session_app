function audio_play() {
  const playButton = document.getElementById("audio-play")
  const audioFile = document.getElementsByTagName("audio")
  playButton.addEventListener("click",() => {
    for (var i = 0;  i < audioFile.length;  i++){
    audioFile[i].play();
    };
  });
};

function audio_pause() {
  const pauseButton = document.getElementById("audio-pause")
  const audioFile = document.getElementsByTagName("audio")
  pauseButton.addEventListener("click",() => {
    for (var i = 0;  i < audioFile.length;  i++){
    audioFile[i].pause();
    };
  });
};

function audio_reset() {
  const pauseButton = document.getElementById("audio-reset")
  const audioFile = document.getElementsByTagName("audio")
  pauseButton.addEventListener("click",() => {
    for (var i = 0;  i < audioFile.length;  i++){
    audioFile[i].pause();
    audioFile[i].currentTime = 0;
    };
  });

};



window.addEventListener("load", audio_play)
window.addEventListener("load", audio_pause)
window.addEventListener("load", audio_reset)