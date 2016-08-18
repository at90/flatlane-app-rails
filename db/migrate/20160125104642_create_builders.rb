class CreateBuilders < ActiveRecord::Migration
  def change
    create_table :builders do |t|
      t.integer :b_id
      t.string :b_name
      t.integer :b_projects_completed
      t.string :b_weblink

      t.timestamps null: false
    end
  end
end
