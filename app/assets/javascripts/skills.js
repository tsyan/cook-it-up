var Skills = Skills || { knownSkills: [], unknownSkills: ["1","2","3","4","5"] },
    Recipes = Recipes || {};

$(document).ready(function() {
  $('.skill-button').click(Skills.selectSkill);
  $('#skills-done-button').click(Recipes.getKnownRecipes);
  $('#skills-done-button').click(Skills.getUnknownSkills);
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
  var known_skill_id = button.attr('data-skill-id'),
      unknown_skill_position = $.inArray(known_skill_id, Skills.unknownSkills);
  Skills.knownSkills.push(known_skill_id);
  Skills.unknownSkills.splice(unknown_skill_position,1);
  console.log("Skills.knownSkills:" + Skills.knownSkills);
  console.log("Skills.unknownSkills:" + Skills.unknownSkills);
};

Skills.removeSkill = function(button) {
  var unknown_skill_id = button.attr('data-skill-id'),
      known_skill_position = $.inArray(unknown_skill_id, Skills.knownSkills);
  Skills.knownSkills.splice(known_skill_position, 1);
  Skills.unknownSkills.push(unknown_skill_id);
  console.log("Skills.knownSkills:" + Skills.knownSkills);
  console.log("Skills.unknownSkills:" + Skills.unknownSkills);
};

Recipes.getKnownRecipes = function(event) {
  event.preventDefault();
  $.ajax({
    url: '/known_recipes',
    type: 'POST',
    dataType: 'JSON',
    data: {known_skills: Skills.knownSkills}
  })
  .done(function(data) {
    console.log("success! retrieved known recipes");
    console.log(data);
    Recipes.renderKnownRecipes(data);
  })
  .fail(function() {
    console.log("error! could not retrieve recipes");
  });
  return false;
};

Recipes.renderKnownRecipes = function(recipes) {
  // if div already exists for some reason, empty it
  $('#try-recipes').empty();

  // create new #try-recipes div and append to <body>
  $('<div>')
    .attr('id','try-recipes')
    .appendTo('body')
    .append('<h2>Try a recipe!</h2>');

  // loop through each returned recipe
  for (var i = 0; i < recipes.length; i++) {

    // create new link to recipe url
    $('<a>')
      .attr('id','recipe-'+i+'url')
      .attr('href', recipes[i].url)
      .appendTo('#try-recipes');

    // create new #recipe-x div and append to #try-recipes
    $('<div>')
      .addClass('recipe-square')
      .attr('id','recipe-'+i)
      .appendTo('#recipe-'+i+'url');

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

Skills.getUnknownSkills = function(event) {
  event.preventDefault();
  $.ajax({
      url: '/unknown_skills',
      type: 'POST',
      dataType: 'JSON',
      data: {unknown_skills: Skills.unknownSkills}
    })
    .done(function(data) {
      console.log("success! retrieved unknown skills");
      console.log(data);
      Skills.renderUnknownSkills(data);
    })
    .fail(function() {
      console.log("error! could not retrieve skills");
    });
    return false;
};

Skills.renderUnknownSkills = function(skills) {
  // if div already exists for some reason, empty it
  $('#learn-skills').empty();

  // create new #learn-skills div and append to <body>
  $('<div>')
    .attr('id', 'learn-skills')
    .appendTo('body')
    .append('<h2>Learn a new skill!</h2>');

  //loop through each returned skill
  for (var i = 0; i < skills.length; i++) {

    // create new #skill-x div and append to #learn-skills
    $('<div>')
      .addClass('skill-block')
      .attr('id','skill-'+i)
      .appendTo('#learn-skills');

    // give skill a name
    $('<p>')
      .addClass('skill-name')
      .text(skills[i].name)
      .appendTo('#skill-'+i);

    // give skill a background image
    // $('#skill-'+i)
    //   .css('background-image','url(' + skills[i].photo_url + ')');

    // fade-in the new div
    $('#learn-skills')
      .css({ display: "block", opacity: 0})
      .animate({ opacity: 1 }, 400);

  }

};
