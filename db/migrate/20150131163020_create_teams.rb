class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.attachment :avatar
      t.string :info

      t.timestamps
    end
  end
end
