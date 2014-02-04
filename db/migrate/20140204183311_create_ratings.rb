class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :stars
      t.text :comment
      t.integer :campsite_id
      t.string :name
      t.text :description
      t.string :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
