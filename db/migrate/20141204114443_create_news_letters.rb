class CreateNewsLetters < ActiveRecord::Migration
  def change
    create_table :news_letters do |t|
      t.date :date
      t.string :name

      t.timestamps
    end
  end
end
