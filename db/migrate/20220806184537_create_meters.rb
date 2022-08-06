class CreateMeters < ActiveRecord::Migration[6.1]
  def change
    create_table :meters do |t|
      t.string :name
      t.string :pattern

      t.timestamps
    end
  end
end
