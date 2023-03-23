class CreateCartedPlants < ActiveRecord::Migration[7.0]
  def change
    create_table :carted_plants do |t|
      t.string :name
      t.text :description
      t.integer :amount_of_sun
      t.integer :days_to_water
      t.integer :user_id

      t.timestamps
    end
  end
end
