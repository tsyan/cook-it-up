class Recipe < ActiveRecord::Base
  has_many :practices
  has_many :skills, through: :practices

  has_attached_file :photo, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>',
      tile: '220x255>'
  }

  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def self.find_recipes_that_require_any_of_these_skills(*known_skill_ids)
    self.select do |recipe|
      recipe.skill_ids.all? do |skill_id|
        known_skill_ids.include?(skill_id)
      end
    end
  end

  # calls the above method twice, once with the new skill and once without
  # and subtracts one result from the other
  def self.find_newly_unlocked_recipes(*prior_skill_ids, new_skill_id)
    self.find_recipes_that_require_any_of_these_skills(*(prior_skill_ids + [new_skill_id])) - self.find_recipes_that_require_any_of_these_skills(*prior_skill_ids)
  end
end
