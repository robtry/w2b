class CreateUsuarioItems < ActiveRecord::Migration[5.1]
  def change
    create_table :usuario_items do |t|
      t.references :item, foreign_key: true
      t.references :assignment, foreign_key: true

      t.timestamps
    end
  end
end
