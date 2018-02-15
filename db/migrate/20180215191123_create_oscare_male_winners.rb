class CreateOscareMaleWinners < ActiveRecord::Migration[5.1]
  def change
    create_table :oscare_male_winners do |t|
      t.integer :winnerId
      t.integer :year
      t.integer :age
      t.string :name
      t.string :movie

      t.timestamps
    end
  end
end
