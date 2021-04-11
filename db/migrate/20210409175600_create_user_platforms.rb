class CreateUserPlatforms < ActiveRecord::Migration[6.1]
  def change
    create_table :user_platforms do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :platform, null: false, foreign_key: true

      t.timestamps
    end
  end
end
