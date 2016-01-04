class AddOrderToAlbums < ActiveRecord::Migration
  def change
  	add_column :albums, :order, :integer
  end
end
