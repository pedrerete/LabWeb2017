class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.string :title
      t.text :body
      t.text :author
      t.date :date

      t.timestamps
    end
  end
end
