class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :c_id
      t.string :c_name
      t.string :c_description
      t.string :c_landmark1
      t.string :c_landmark2

      t.timestamps null: false
    end
  end
end
