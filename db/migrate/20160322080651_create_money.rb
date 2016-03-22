class CreateMoney < ActiveRecord::Migration
  def change
    create_table :money do |t|
      t.date :registered
      t.integer :income
      t.integer :outcome
      t.integer :total

      t.timestamps null: false
    end
  end
end
