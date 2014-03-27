var Skills = Skills || { currentSkills: [] },
    Recipes = Recipes || {};

$(document).ready(function() {
  $('.skill-button').click(Skills.selectSkill);
  $('#skills-done-button').click(Recipes.getCurrentRecipes);
});

Skills.selectSkill = function(event) {
  if (event.target.className.match("btn-primary")) {
    Skills.addSkill($(this));
  }
  if (event.target.className.match("btn-success")) {
    Skills.removeSkill($(this));
  }
  $(this).toggleClass("active");
  $(this).toggleClass("btn-primary");
  $(this).toggleClass("btn-success");
};

Skills.addSkill = function(button) {
  var this_skill = button.attr('data-skill-id');
  Skills.currentSkills.push(this_skill);
  console.log("Skills.currentSkills:" + Skills.currentSkills);
};

Skills.removeSkill = function(button) {
  var this_skill = $.inArray(button.attr('data-skill-id'), Skills.currentSkills);
  Skills.currentSkills.splice(this_skill, 1);
  console.log("Skills.currentSkills:" + Skills.currentSkills);
};

Recipes.getCurrentRecipes = function(event) {
  event.preventDefault();
  $.ajax({
    url: '/skills',
    type: 'POST',
    dataType: 'JSON',
    data: {known_skills: Skills.currentSkills}
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
  // if div already exists for some reason, empty it
  $('#try-recipes').empty();

  // create new #try-recipes div and append to <body>
  $('<div>')
    .attr('id','try-recipes')
    .appendTo('body')
    .append('<h2>Try a recipe!</h2>');

  // loop through each returned recipe
  for (var i = 0; i < recipes.length; i++) {

    // create new #recipe-x div and append to #try-recipes
    $('<div>')
      .addClass('recipe-square')
      .attr('id','recipe-'+i)
      .appendTo('#try-recipes');

    // give recipe a name
    $('<p>')
      .addClass('recipe-name')
      .text(recipes[i].name)
      .appendTo('#recipe-'+i);

    // give recipe a background image
    $('#recipe-'+i)
      .css('background-image','url('+recipes[i].photo_url+')');
  }

  // fade-in the new div
  $('#try-recipes').css({ display: "block", opacity: 0 }).animate({ opacity: 1 }, 400);

  // collapse the old div
  $('#all-skills').animate({height: 0, display: "none"}, 700);
};
