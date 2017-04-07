class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.string :title
      t.text :body
      t.string :author
      t.string :image_uid
      
      t.timestamps
    end
  end
end
