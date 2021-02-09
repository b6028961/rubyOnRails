class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :email
      t.string :user_id
      t.integer :age

      t.timestamps
    end
  end
end
