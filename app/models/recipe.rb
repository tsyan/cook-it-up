class Recipe < ActiveRecord::Base
  has_many :practices
  has_many :skills, through: :practices

  def self.find_recipes_that_require_any_of_these_skills(*known_skill_ids)
    self.select do |recipe|
      recipe.skill_ids.all? do |skill_id|
        known_skill_ids.include?(skill_id)
      end
    end
  end

  def self.find_newly_unlocked_recipes(*prior_skill_ids, new_skill_id)
    self.find_recipes_that_require_any_of_these_skills(*(prior_skill_ids + [new_skill_id])) - self.find_recipes_that_require_any_of_these_skills(*prior_skill_ids)
  end
end
