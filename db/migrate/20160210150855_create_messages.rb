class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.text   :content
      t.integer :owner_id
      t.integer :foster_parent_id

      t.timestamps null: false
    end
  end
end
