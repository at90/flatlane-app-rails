class CreateFlatlanelists < ActiveRecord::Migration
  def change
    create_table :flatlanelists do |t|

      t.timestamps null: false
    end
  end
end
