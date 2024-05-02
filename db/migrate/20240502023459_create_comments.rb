class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments, id: :uuid do |t|
      t.text :comment
      t.references :product, null: false, foreign_key: true, type: :uuid
      t.datetime :deleted_at
      t.timestamps
    end
    add_index :comments, :deleted_at
  end
end
