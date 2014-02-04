class AddDescriptionLocationLatLongToCampsite < ActiveRecord::Migration
  def change
    add_column :campsites, :description, :text
    add_column :campsites, :location, :string
    add_column :campsites, :latitude, :float
    add_column :campsites, :longitude, :float
  end
end
