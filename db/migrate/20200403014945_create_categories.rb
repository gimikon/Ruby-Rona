class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.text :symptom
      t.text :level
      t.text :icon

      t.timestamps
    end
  end
end
