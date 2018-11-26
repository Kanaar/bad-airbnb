class AddUserReferenceToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :user, :references
  end
end
