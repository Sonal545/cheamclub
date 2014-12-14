class CreateLawns < ActiveRecord::Migration
  def change
    create_table :lawns do |t|
      t.integer :lawn_no

      t.timestamps
    end
  end
end
