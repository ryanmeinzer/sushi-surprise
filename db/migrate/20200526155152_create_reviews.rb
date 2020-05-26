class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :customer_id
      t.integer :sushi_id
      t.integer :rating

      t.timestamps
    end
  end
end
