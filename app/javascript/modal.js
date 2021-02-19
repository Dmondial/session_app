function modal_off(){
  const content = document.getElementById("modal")
  const delBtn = document.getElementById("modal_del_btn")
  delBtn.addEventListener("click",() => {
    content.style.display = "none"
  });
};

function modal_on(){
  const content = document.getElementById("modal")
  const onBtn = document.getElementById("modal_on")
  onBtn.addEventListener("click",() => {
    content.style.display = "block"
  });
};

window.addEventListener("load", modal_off)
window.addEventListener("load", modal_on)