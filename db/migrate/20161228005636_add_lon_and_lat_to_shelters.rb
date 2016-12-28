class AddLonAndLatToShelters < ActiveRecord::Migration[5.0]
  def change
    add_column :shelters, :lat, :float
    add_column :shelters, :long, :float
  end
end
