class CreateAssetgroups < ActiveRecord::Migration
  def change
    create_table :assetgroups do |t|
      t.string :guid
      t.string :recipient_id
      t.string :custom_id

      t.timestamps
    end
  end
end
