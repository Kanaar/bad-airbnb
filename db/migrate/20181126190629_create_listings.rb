class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.text :description
      t.string :address
      t.integer :price_daily
      t.string :country
      t.string :city
      t.integer :capacity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
