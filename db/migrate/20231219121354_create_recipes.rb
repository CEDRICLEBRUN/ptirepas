class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.string :season
      t.string :category
      t.text :ingredients
      t.integer :prep_time
      t.integer :cook_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
