class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.string :CarParts
      t.references :Cars, foreign_key: true
      t.references :Parts, foreign_key: true

      t.timestamps
    end
  end
end
