class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues, id: :uuid do |t|
      t.string :name, null: false, default: ""
      t.string :address, null: false, default: ""
      t.string :country, null: false, default: ""
      t.float :latitude, null: false, default: 0.0
      t.float :longitude, null: false, default: 0.0

      t.timestamps
    end
  end
end
