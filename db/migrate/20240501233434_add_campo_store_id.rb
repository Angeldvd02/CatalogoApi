class AddCampoStoreId < ActiveRecord::Migration[7.1]
  def change
    add_column :categories, :store_id, :string
  end
end
