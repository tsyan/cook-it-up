class SkillsController < ApplicationController

  def index
    @skills = Skill.all
  end

  def display
  end

end
