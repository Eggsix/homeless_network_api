class CreateShelters < ActiveRecord::Migration[5.0]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.integer :beds

      t.timestamps
    end
  end
end
