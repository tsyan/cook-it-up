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
  Skills.currentSkills.push(button.attr('data-skill-id'));
  console.log("Skills.currentSkills:" + Skills.currentSkills);
};

Skills.removeSkill = function(button) {
  var this_skill = Skills.currentSkills.indexOf(button.attr('data-skill-id'));
  // change this line
  // remove element from array by index (instead of pop)
  Skills.currentSkills.pop(this_skill);
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
  $('#try-recipes').removeClass("hidden");
  $('.recipe-square').empty();
  for (var i = 0; i < recipes.length; i++) {
    $("#recipe-" + i).append('<p>' + recipes[i].name + '</p>');
  }
};
