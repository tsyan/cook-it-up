class Practice < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :skill
end
