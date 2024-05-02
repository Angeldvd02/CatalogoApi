class CreateImages < ActiveRecord::Migration[7.1]
  def change
    create_table :images, id: :uuid do |t|
      t.string :image_id
      t.string :image_type
      t.datetime :deleted_at
      t.references :imageable, polymorphic: true
      
      t.timestamps
    end
    add_index :images, :deleted_at
  
  end
end
