class AddFriendsListToUser < ActiveRecord::Migration
  def change
    add_column :users, :friends_list, :text
  end
end
