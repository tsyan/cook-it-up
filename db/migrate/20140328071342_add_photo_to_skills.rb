class AddPhotoToSkills < ActiveRecord::Migration
  def self.up
    add_attachment :skills, :photo
  end

  def self.down
    remove_attachment :skills, :photo
  end
end
