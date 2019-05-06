class UpdateActors < ActiveRecord::Migration[5.2]
  def change
  	add_column :actors, :catchphrase, :string
  end
end
