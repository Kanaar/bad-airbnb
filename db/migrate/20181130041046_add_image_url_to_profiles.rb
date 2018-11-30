class AddImageUrlToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :image_url, :string
  end
end
