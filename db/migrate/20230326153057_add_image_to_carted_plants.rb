class AddImageToCartedPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :carted_plants, :image_url, :string
  end
end
