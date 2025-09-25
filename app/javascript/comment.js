const comment = () => {
  const CommentRan = document.getElementById("comment-ran");
  const Comments = document.getElementById("comments")
  CommentRan.addEventListener('click',function() {
    if (Comments.getAttribute("style") == "display:block;") {
      Comments.setAttribute("style");
    } else {
      Comments.setAttribute("style", "display:block;");
    };
    Comments.addEventListener('click', function() {
      if (Comments.getAttribute("style") == "display:block;") {
        Comments.setAttribute("style", "display:block;");
      } else {
        Comments.setAttribute("style");
      };
    })
  })
};
window.addEventListener("turbo:load", comment);
window.addEventListener("turbo:render", comment);