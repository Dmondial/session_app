function audio_play() {
  const playButton = document.getElementById("audio-play")
  const audioFile = document.getElementsByTagName("audio")
  console.log(document.getElementsByTagName("audio"))
  console.log(document.getElementsByTagName("audio").length)
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



window.addEventListener("load", audio_play)
window.addEventListener("load", audio_pause)