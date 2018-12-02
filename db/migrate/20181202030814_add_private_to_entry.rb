class AddPrivateToEntry < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :private, :boolean
  end
end
