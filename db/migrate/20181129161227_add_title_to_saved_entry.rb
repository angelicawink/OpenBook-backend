class AddTitleToSavedEntry < ActiveRecord::Migration[5.2]
  def change
    add_column :saved_entries, :title, :string
  end
end
