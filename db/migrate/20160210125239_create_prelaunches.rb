class CreatePrelaunches < ActiveRecord::Migration
  def change
    create_table :prelaunches do |t|
      t.string :b_name
      t.string :phone
      t.string :city

      t.timestamps null: false
    end
  end
end
