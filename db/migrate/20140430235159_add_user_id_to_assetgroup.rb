class AddUserIdToAssetgroup < ActiveRecord::Migration
  def change
    add_column :assetgroups, :user_id, :integer
  end
end
