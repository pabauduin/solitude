const attentionAlert = document.querySelector(".attention-alert")


changeMarginTop = () => {
  attentionAlert.classList.add("margin-top-null");
}

setTimeout(function() { document.addEventListener('click', changeMarginTop() ); }, 3000);

