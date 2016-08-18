class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :name
      t.integer :b_id
      t.integer :cat
      t.integer :price
      t.string :address1
      t.string :address2
      t.integer :c_id
      t.integer :state
      t.string :description
      t.integer :area
      t.date :project_date
      t.string :feat_1
      t.string :feat_2
      t.string :amen
      t.string :l_gmap
      t.string :l_prox1_name
      t.float :l_prox1
      t.string :l_prox2_name
      t.float :l_prox2
      t.string :l_prox3_name
      t.float :l_prox3
      t.string :l_prox4_name
      t.float :l_prox4

      t.timestamps null: false
    end
  end
end
