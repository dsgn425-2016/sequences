class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :first
      t.integer :second
      t.integer :third

      t.timestamps null: false
    end
  end
end
