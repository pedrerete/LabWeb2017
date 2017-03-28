class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.string :customerName
      t.string :customerEMail
      t.integer :customerPhone
      t.text :customerComments
      t.text :customerOrder

      t.timestamps
    end
  end
end
