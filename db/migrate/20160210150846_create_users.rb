class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
       t.string :username
      t.string :email
      t.string :password_digest
      t.text   :about_me
      t.integer :zip

      t.timestamps null: false
    end
  end
end
