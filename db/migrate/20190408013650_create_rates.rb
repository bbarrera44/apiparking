class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.integer :name
      t.integer :value
      t.date :date_begin
      t.date :date_end

      t.timestamps
    end
  end
end
