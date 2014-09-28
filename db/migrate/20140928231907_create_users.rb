class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :password
      t.string :location
      t.string :address
      t.string :spol
      t.date :date_of_birth
      t.string :phone

      t.timestamps
    end
  end
end
