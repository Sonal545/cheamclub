class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.integer :lawn_id
      t.date :date
      t.text :details

      t.timestamps
    end
  end
end
