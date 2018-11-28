class AddSettingIdToMoments < ActiveRecord::Migration[5.2]
  def change
    add_column :moments, :setting_id, :integer
  end
end
