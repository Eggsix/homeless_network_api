class AddShelterIdToLocation < ActiveRecord::Migration[5.0]
  def change
    add_reference :locations, :shelter, index: true
  end
end
