class CreateToDos < ActiveRecord::Migration[5.0]
  def change
    create_table :to_dos do |t|
      t.text :item
      t.references :user
      t.timestamps
    end
  end
end
