class AddCampsiteIdAndUserIdToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :campsite_id, :integer
    add_column :ratings, :user_id, :integer
  end
end
