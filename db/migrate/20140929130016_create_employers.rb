class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :contact_name
      t.string :contact_lastname
      t.string :contact_email
      t.string :password
      t.string :company_name
      t.string :location
      t.string :address
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
