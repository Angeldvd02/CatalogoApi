class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products, id: :uuid do |t|
      t.string :name
      t.text :description
      t.integer :stock
      t.decimal :price
      t.string :state
      t.references :category, null: false, foreign_key: true, type: :uuid
      t.datetime :deleted_at
      t.timestamps
    end
    add_index :products, :deleted_at
  end
end
