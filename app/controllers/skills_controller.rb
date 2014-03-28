class SkillsController < ApplicationController

  def index
    @skills = Skill.all
  end

  def display
    @skills = Skill.find(params[:unknown_skills])
    render json: @skills.to_json(only: [:id, :name, :url, :photo], methods: [:photo_url])
  end

  def new_photo
    @skill = Skill.find(params[:id])
  end

  def save_photo
    @skill = Skill.find(params[:id])
    @skill.update_attributes(photo: params[:skill][:photo])
    @skill.save
    redirect_to all_skills_path
  end

  def all_skills
    @skills = Skill.order(id: :asc)
  end
end
