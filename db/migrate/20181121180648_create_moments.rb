class CreateMoments < ActiveRecord::Migration[5.2]
  def change
    create_table :moments do |t|
      t.integer :user_id
      t.integer :feeling_id
      t.timestamps
    end
  end
end
