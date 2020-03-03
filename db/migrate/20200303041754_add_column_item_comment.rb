class AddColumnItemComment < ActiveRecord::Migration[5.2]
  def change
  	add_column :item_comments, :score, :float
  end
end
