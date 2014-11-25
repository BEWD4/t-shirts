class AddImageToTshirt < ActiveRecord::Migration
  def change
    add_column :tshirts, :image, :string
  end
end
