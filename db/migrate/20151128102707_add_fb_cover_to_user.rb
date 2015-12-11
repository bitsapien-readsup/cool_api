class AddFbCoverToUser < ActiveRecord::Migration
  def change
    add_column :users, :fb_cover, :string
  end
end
