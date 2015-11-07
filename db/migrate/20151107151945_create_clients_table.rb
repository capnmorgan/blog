class CreateClientsTable < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :full_name
      t.string :stage
      t.integer :dealmaster_rating
      t.integer :salary
      t.string :location
      t.integer :money

      t.timestamps null: false
    end
  end
end
