class CreateMedia < ActiveRecord::Migration[6.1]
  def change
    create_table :media do |t|
      t.string :title
      t.string :genre
      t.boolean :is_movie
      t.string :image
      t.integer :release_date
      t.string :network
      t.text :description
      t.text :starring

      t.timestamps
    end
  end
end
