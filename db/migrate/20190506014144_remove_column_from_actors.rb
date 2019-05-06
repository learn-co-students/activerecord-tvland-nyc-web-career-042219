class RemoveColumnFromActors < ActiveRecord::Migration[5.2]
  def change
  	remove_column :actors, :catchphrase
  end
end
