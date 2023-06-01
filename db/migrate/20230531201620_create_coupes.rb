class CreateCoupes < ActiveRecord::Migration[6.1]
  def change
    create_table :coupes do |t|
      t.integer :doors, limit: 2, default: 2

      t.timestamps
    end
  end
end
