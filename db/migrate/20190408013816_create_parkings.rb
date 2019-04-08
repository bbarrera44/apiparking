class CreateParkings < ActiveRecord::Migration[5.2]
  def change
    create_table :parkings do |t|
      t.string :name
      t.string :adress
      t.integer :phone

      t.timestamps
    end
  end
end
