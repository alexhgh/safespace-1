class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :string
    add_column :users, :offline, :boolean
    add_column :users, :block_count, :integer
    add_column :users, :banned, :boolean
  end
end
