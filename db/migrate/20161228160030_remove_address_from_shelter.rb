class RemoveAddressFromShelter < ActiveRecord::Migration[5.0]
  def change
    remove_column :shelters, :address, :string
  end
end
