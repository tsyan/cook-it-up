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
  $('.recipe-square').empty();
  for (var i = 0; i < recipes.length; i++) {
    $("#recipe-" + i).append('<p>' + recipes[i].name + '</p>');
  }
  $('#try-recipes').css({ display: "block", opacity: 0 }).animate({ opacity: 1 }, 400);
  $('#all-skills').animate({height: 0, display: "none"}, 700);
};
