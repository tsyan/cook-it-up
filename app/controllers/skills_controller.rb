class SkillsController < ApplicationController

  def index
    @skills = Skill.all
  end

  def display
    @skills = Skill.find(params[:unknown_skills])
    render json: @skills
  end

end
