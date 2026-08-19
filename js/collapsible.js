let coll = document.getElementsByClassName("collapsible");

for (let i = 0; i < coll.length; i++) {
  coll[i].setAttribute("aria-expanded", "false");

  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");

    let expanded = this.classList.contains("active");
    this.setAttribute("aria-expanded", expanded ? "true" : "false");

    let content = this.parentElement.querySelector(".abstract");
    content.style.display = expanded ? "block" : "none";
  });
}
