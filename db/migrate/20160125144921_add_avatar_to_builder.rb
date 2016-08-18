class AddAvatarToBuilder < ActiveRecord::Migration
  def change
    add_column :builders, :avatar, :string
  end
end
