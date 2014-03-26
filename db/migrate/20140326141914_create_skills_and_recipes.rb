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

    create_table :recipes_skills do |t|
      t.belongs_to :skill
      t.belongs_to :recipe
    end

    add_index :recipes_skills, :skill_id
    add_index :recipes_skills, :recipe_id

  end
end
