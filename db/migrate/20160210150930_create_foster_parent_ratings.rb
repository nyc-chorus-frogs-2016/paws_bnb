class CreateFosterParentRatings < ActiveRecord::Migration
  def change
    create_table :foster_parent_ratings do |t|
      t.integer :rating
      t.text   :comment
      t.integer :owner_id
      t.integer :foster_parent_id

      t.timestamps null: false
    end
  end
end
