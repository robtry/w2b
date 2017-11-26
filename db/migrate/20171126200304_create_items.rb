class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :numero
      t.string :descripcion
      t.references :event, foreign_key: true
      t.references :assignment, foreign_key: true

      t.timestamps
    end
  end
end
