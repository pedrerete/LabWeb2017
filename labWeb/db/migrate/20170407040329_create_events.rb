class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
    	t.string :title
      t.text :body
      t.date :date
      t.string :image_uid

      t.timestamps
    end
  end
end
