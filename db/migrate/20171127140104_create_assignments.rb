class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.string :usuario
      t.integer :cantidad
      t.references :event, foreign_key: true
      t.references :item, foreign_key: true
      t.timestamps
    end
  end
end
