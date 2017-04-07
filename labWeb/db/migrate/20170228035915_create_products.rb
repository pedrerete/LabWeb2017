class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

      t.string :productName
      t.text :productDescription
      t.decimal :price
      t.string :image_uid

      t.timestamps
    end
  end
end
