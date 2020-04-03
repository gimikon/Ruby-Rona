class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.string :password_digest
      t.date :DOB
      t.text :address
      t.boolean :admin, :default => false



      t.timestamps
    end
  end
end
