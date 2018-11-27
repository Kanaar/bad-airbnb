class Addheadlinetolistings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :headline, :string
  end
end

