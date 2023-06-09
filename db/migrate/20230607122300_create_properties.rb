class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :title
      t.string :location
      t.string :description
      t.integer :price
      t.string :image_url
      t.integer :estate_id
      t.integer :seller_id
    end
  end
end
