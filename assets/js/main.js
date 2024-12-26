var searchBox = document.getElementById("search-box");
var searchInput = document.querySelector(".search__input");
var commentForm = document.querySelector(".comment-form");
var evaluateBtn = document.querySelector(".evaluate__btn");

evaluateBtn.addEventListener("click", function () {
  commentForm.classList.toggle("active");
});
