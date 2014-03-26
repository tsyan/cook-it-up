class CreateSkillsAndRecipes < ActiveRecord::Migration
  def change

    create_table :skills do |t|
      t.text :name
      t.text :url
      t.timestamps
    end

    create_table :recipes do |t|
      t.text :name
      t.text :url
      t.timestamps
    end

    create_table :skills_recipes do |t|
      t.belongs_to :skill
      t.belongs_to :recipe
    end

  end
end
