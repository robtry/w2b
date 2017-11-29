class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :numero
      t.integer :numero_original
      t.string :descripcion
      t.boolean :completado,:default => false
      t.references :event, foreign_key: true
      #t.references :item_user, foreign_key: true

      t.timestamps
    end
  end
end
