class RemoveLatAndLongFromShelters < ActiveRecord::Migration[5.0]
  def change
    remove_column :shelters, :lat, :float
    remove_column :shelters, :long, :float
  end
end
