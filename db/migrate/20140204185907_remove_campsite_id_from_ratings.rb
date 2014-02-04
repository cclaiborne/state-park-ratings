class RemoveCampsiteIdFromRatings < ActiveRecord::Migration
  def change
    remove_column :ratings, :campsite_id, :integer
  end
end
