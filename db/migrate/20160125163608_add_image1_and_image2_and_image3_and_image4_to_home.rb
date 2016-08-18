class AddImage1AndImage2AndImage3AndImage4ToHome < ActiveRecord::Migration
  def change
    add_column :homes, :image1, :string
    add_column :homes, :image2, :string
    add_column :homes, :image3, :string
    add_column :homes, :image4, :string
  end
end
