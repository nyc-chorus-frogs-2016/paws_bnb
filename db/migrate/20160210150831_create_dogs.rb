class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :sex
      t.string :is_neutered
      t.text   :description
      t.integer :zip
      t.string :age_range
      t.integer :owner_id
      t.date    :foster_start
      t.date    :foster_end

      t.timestamps null: false
    end
  end
end
