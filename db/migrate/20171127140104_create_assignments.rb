class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.string :usuario
      #t.references :item_user, foreign_key: true

      t.timestamps
    end
  end
end