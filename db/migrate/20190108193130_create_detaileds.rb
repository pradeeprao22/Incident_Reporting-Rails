class CreateDetaileds < ActiveRecord::Migration[5.2]
  def change
    create_table :detaileds do |t|
      t.string :name
      t.string :emailornumber
      t.string :role
      t.string :involved
      t.text :observer
      t.text :dateortime
      t.string :location
      t.string :other
      t.text :description
      t.string :attachment
      t.references :school, foreign_key: true

      t.timestamps
    end
  end
end
