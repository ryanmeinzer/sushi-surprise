class AddImageUrlToOceans < ActiveRecord::Migration[6.0]
  def change
    add_column :oceans, :img_url, :string
  end
end
