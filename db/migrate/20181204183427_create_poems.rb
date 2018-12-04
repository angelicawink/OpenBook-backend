class CreatePoems < ActiveRecord::Migration[5.2]
  def change
    create_table :poems do |t|
      t.integer :user_id
      t.text :content
      t.string :title
      t.timestamps
    end
  end
end
