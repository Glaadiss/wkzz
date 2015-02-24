class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :surname
      t.date :age
      t.string :country
      t.string :city
      t.text :info
      t.string :position
      t.attachment :avatar

      t.timestamps
    end
  end
end
