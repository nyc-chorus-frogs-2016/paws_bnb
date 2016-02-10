class CreateMatchings < ActiveRecord::Migration
  def change
    create_table :matchings do |t|
      t.date :foster_start
      t.date   :foster_end
      t.integer :dog_id
      t.integer :foster_parent_id

      t.timestamps null: false
    end
  end
end
