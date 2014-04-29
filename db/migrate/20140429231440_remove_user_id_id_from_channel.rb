class RemoveUserIdIdFromChannel < ActiveRecord::Migration
  def change
    remove_column :channels, :user_id_id, :integer
  end
end
