class CreateSkills < ActiveRecord::Migration
 def change
    create_table :skills do |t|
      t.string :technology, null: false
      t.string :profiency
      t.integer :scale,  :limit => 2
      t.references :user, index: true

      t.timestamps
    end
  end
end
