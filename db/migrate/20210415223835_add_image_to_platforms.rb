class AddImageToPlatforms < ActiveRecord::Migration[6.1]
  def change
    add_column :platforms, :image, :string
  end
end
