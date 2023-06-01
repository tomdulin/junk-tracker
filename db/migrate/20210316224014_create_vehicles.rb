class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :nickname
      t.string :registration, limit: 30, index: true, unique: true
      t.integer :mileage
      t.string :engine_status, default: 'works'
      t.references :vehicleable, polymorphic: true, null: false, index: true

      t.timestamps
    end
  end
end
