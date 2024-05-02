class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories, id: :uuid do |t|
      t.string :name
      t.datetime :deleted_at
      t.timestamps
    end
    add_index :categories, :deleted_at
  end
end

