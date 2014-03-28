class Recipe < ActiveRecord::Base
  has_many :practices
  has_many :skills, through: :practices

  has_attached_file :photo, styles: {
      # thumb: '100x100>',
      # square: '200x200#',
      # medium: '300x300>',
      tile: '225x260^' # width by height
  }

  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def self.find_recipes_that_require_any_of_these_skills(*known_skill_ids)

    # the crazy sql way (number of queries is always 2)
    Recipe.joins(:skills)
          .merge(Skill.where(id: known_skill_ids))
          .where("recipes.id NOT IN (?)", Recipe.joins(:skills).merge(Skill.where("skills.id NOT IN (?)", known_skill_ids)).uniq.pluck(:id)).uniq

    # the more-understandable ruby way (number of queries scales linearly)
    self.select do |recipe|
      recipe.skill_ids.all? do |skill_id|
        known_skill_ids.include?(skill_id)
      end
    end
  end

  # calls the above method twice, once with the new skill and once without
  # and subtracts one result from the other
  # this is also the hackiest thing ever
  def self.find_newly_unlocked_recipes(*all_skill_ids)
    all_skill_ids.delete(0)
    new_skill_id = all_skill_ids.last
    all_skill_ids.delete(all_skill_ids.last)
    prior_skill_ids = all_skill_ids
    self.find_recipes_that_require_any_of_these_skills(*(prior_skill_ids + [new_skill_id])) - self.find_recipes_that_require_any_of_these_skills(*prior_skill_ids)
  end

  # this is an instance method, called on a single recipe
  # therefore it's not .self
  def photo_url
    self.photo.url(:tile) # but now, self is the recipe
  end
end
