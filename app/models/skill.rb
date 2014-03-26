class Skill < ActiveRecord::Base
  has_many :practices
  has_many :recipes, through: :practices
end
