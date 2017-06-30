$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  // $(".up_vote").submit(function(event) {
  //   event.preventDefault();
  //   // var $upVote = $(".up_vote").children().find("button")
  //   // $upVote.upvote_valid("p")
  //
  //   $.ajax({
  //     url: "/questions/posts/<%= @question.id %>/vote",
  //     method: "post",
  //     data: $(this).serialize()
  //   }).done(function(res) {
  //     console.log(res);
  //     $('.up_vote').html(res);
  //   });
  // });
});
