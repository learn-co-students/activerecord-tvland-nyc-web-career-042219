class ChangeCharCatch < ActiveRecord::Migration[4.2]
  def change
    change_column :characters, :catchphrase, :text
  end
end
