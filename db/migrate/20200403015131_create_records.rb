class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.date :date
      t.integer :user_id
      t.integer :category_id
      t.text :note

      t.timestamps
    end
  end
end
