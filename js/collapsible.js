let coll = document.getElementsByClassName("collapsible");

for (let i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    
    let content = this.parentElement.querySelector(".abstract");
    content.style.display = (content.style.display === "block") ? "none" : "block";
  });
}
