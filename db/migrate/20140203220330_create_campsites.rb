class CreateCampsites < ActiveRecord::Migration
  def change
    create_table :campsites do |t|
      t.string :name

      t.timestamps
    end
  end
end
