class RemoveDescriptionFromRatings < ActiveRecord::Migration
  def change
    remove_column :ratings, :description, :text
  end
end
