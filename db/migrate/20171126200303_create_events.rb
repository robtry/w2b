class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :nombre
      t.text :descripcion
      #t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
