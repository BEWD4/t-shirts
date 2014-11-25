class CreateTshirts < ActiveRecord::Migration
  def change
    create_table :tshirts do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
