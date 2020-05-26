class CreateSushis < ActiveRecord::Migration[6.0]
  def change
    create_table :sushis do |t|
      t.string :name
      t.string :img_url
      t.integer :ocean_id

      t.timestamps
    end
  end
end
