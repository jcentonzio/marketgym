class AddLatLngToDirectory < ActiveRecord::Migration
  def change
    add_column :directories, :latitude, :float
    add_column :directories, :longitude, :float
  end
end
