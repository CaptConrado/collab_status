class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :cuid
      t.string :title
      t.belongs_to :user_id, index: true

      t.timestamps
    end
  end
end
