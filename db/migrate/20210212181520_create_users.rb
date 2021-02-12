class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :bio
      t.string :favorite_drink

      t.timestamps
    end
  end
end
