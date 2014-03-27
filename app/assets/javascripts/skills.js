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
    data: {known_skills: [1,5]}
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
  $('#try-recipes').toggleClass("hidden");
  for (var i = 0; i < recipes.length; i++) {
    $("#recipe-" + i).empty();
    $("#recipe-" + i).append('<p>' + recipes[i].name + '</p>');
  }
};
