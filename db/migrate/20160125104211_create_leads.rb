class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :name
      t.string :phone
      t.integer :project_id
      t.string :project_name
      t.string :f_1
      t.string :g_2
      t.string :g_3

      t.timestamps null: false
    end
  end
end
