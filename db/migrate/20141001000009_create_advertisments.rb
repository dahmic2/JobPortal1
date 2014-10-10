class CreateAdvertisments < ActiveRecord::Migration
  def change
    create_table :advertisments do |t|
      t.string :title
      t.string :description
      t.date :expire
      t.string :job_type
      t.integer :number_of_positions
      t.string :reciving_email
      t.string :category
      t.string :location
      t.integer :employer_id

      t.timestamps
    end
  end
end
