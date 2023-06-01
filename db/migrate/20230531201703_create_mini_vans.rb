class CreateMiniVans < ActiveRecord::Migration[6.1]
  def change
    create_table :mini_vans do |t|
      t.integer :doors, limit: 2, default: 4
      t.integer :sliding_doors, default: 0

      t.timestamps
    end
  end
end
