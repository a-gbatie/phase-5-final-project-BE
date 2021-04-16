class AddPlatformToMedia < ActiveRecord::Migration[6.1]
  def change
    add_column :media, :platform, :string
  end
end
