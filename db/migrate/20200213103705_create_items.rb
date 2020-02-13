class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.text :bike_name
      t.text :image_id
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
