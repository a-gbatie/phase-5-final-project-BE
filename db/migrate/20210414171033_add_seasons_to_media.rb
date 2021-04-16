class AddSeasonsToMedia < ActiveRecord::Migration[6.1]
  def change
    add_column :media, :seasons, :integer
  end
end
