class AddMoreVAluestoClients < ActiveRecord::Migration
  def change
    add_column :clients, :building, :integer
    add_column :clients, :key, :integer
    add_column :clients, :savings, :integer
    add_column :clients, :calendar, :integer
  end
end
