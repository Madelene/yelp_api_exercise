class ChangeColumnsInFollowsTable < ActiveRecord::Migration
  def change
  	remove_column :follows, :follower_id
  	rename_column :follows, :followee_id, :target_id
  end
end
