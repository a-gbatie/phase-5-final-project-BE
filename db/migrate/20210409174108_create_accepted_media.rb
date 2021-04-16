class CreateAcceptedMedia < ActiveRecord::Migration[6.1]
  def change
    create_table :accepted_media do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :medium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
