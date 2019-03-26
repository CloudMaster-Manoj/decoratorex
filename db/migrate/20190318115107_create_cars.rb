class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :firstname
      t.string :lasrname
      t.string :manufacturer
      t.decimal :cost
      t.string :description
      t.string :color

      t.timestamps
    end
  end
end
