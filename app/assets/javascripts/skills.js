var Skills = Skills || {};

$(document).ready(function() {
  $('.skill-button').click(Skills.changeColor);
});

Skills.changeColor = function(event) {
  event.preventDefault();
  $(this).toggleClass("active");
  $(this).toggleClass("btn-primary");
  $(this).toggleClass("btn-success");

  return false;
};
