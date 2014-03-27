class CreateSkillsAndRecipes < ActiveRecord::Migration
  def change

    create_table :skills do |t|
      t.text :name, index: true
      t.text :url
      t.timestamps
    end

    create_table :recipes do |t|
      t.text :name, index: true
      t.text :url
      t.text :photo_url
      t.timestamps
    end

    create_table :practices do |t|
      t.references :skill, index: true
      t.references :recipe, index: true
    end

  end
end
