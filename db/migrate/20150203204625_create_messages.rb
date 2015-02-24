class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :topic
      t.text :content
      t.attachment :avatar

      t.timestamps
    end
  end
end
