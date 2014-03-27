var Skills = Skills || {},
    Recipes = Recipes || {};

$(document).ready(function() {
  $('.skill-button').click(Skills.changeColor);
  $('#skills-done-button').click(Recipes.getCurrentRecipes);
});

Skills.changeColor = function(event) {
  event.preventDefault();
  $(this).toggleClass("active");
  $(this).toggleClass("btn-primary");
  $(this).toggleClass("btn-success");
  return false;
};

Recipes.getCurrentRecipes = function(event) {
  event.preventDefault();
  $.ajax({
    url: '/skills',
    type: 'POST',
    dataType: 'JSON',
    data: {param1: 'value1'}
  })
  .done(function(data) {
    console.log("success");
    console.log(data);
    Recipes.renderCurrentRecipes(data);
  })
  .fail(function() {
    console.log("error");
  });
  return false;
};

Recipes.renderCurrentRecipes = function(recipes) {
  // var HTML = '<p>' + recipes[0].name + '</p>';

  // $('#recipe-1').append(HTML);

  for (var i = 0; i < recipes.length; i++) {
    $("#recipe-" + i).append('<p>' + recipes[i].name + '</p>');
  }
};
