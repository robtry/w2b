class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :numero
      t.string :descripcion
      t.references :event, foreign_key: true
      #t.references :item_user, foreign_key: true

      t.timestamps
    end
  end
end
