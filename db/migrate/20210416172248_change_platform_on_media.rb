class ChangePlatformOnMedia < ActiveRecord::Migration[6.1]
  def change
    remove_column :media, :platform, :string 
    add_column :media, :platform_id, :integer
  end
end
