class CreateUserteams < ActiveRecord::Migration
  def change
    create_table :userteams do |t|
      t.string :name
      t.integer :player_id
      t.integer :team_id

      t.timestamps
    end
    add_index(:userteams, :player_id)
    add_index(:userteams, :team_id)
  end
end
