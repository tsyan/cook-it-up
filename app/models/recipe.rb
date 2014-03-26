class Recipe < ActiveRecord::Base
  has_many :practices
  has_many :skills, through: :practices

  def self.find_from_skills(*known_skill_ids)
    select{ |recipe| recipe.skill_ids.all?{ |skill_id| known_skill_ids.include?(skill_id) } }
  end

  def self.newly_unlocked_recipes(*prior_skill_ids, new_skill_id)
    find_from_skills(*(prior_skill_ids + [new_skill_id])) - find_from_skills(*prior_skill_ids)
  end
end
