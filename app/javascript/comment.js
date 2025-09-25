const comment = () => {
  const CommentRan = document.getElementById("comment-ran");
  const Comments = document.getElementById("comments")
  CommentRan.addEventListener('click',function() {
    Comments.setAttribute("style", "display:block;");
    CommentRan.addEventListener('click', function() {
      Comments.setAttribute("style", "display:none;");
    })
  })
};
window.addEventListener("turbo:load", comment);
window.addEventListener("turbo:render", comment);