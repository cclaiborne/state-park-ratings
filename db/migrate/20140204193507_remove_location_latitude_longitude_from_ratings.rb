class RemoveLocationLatitudeLongitudeFromRatings < ActiveRecord::Migration
  def change
    remove_column :ratings, :location, :string
    remove_column :ratings, :latitude, :float
    remove_column :ratings, :longitude, :float
  end
end
