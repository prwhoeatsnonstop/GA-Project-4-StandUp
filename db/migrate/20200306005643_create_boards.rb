class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.text :accomplishment
      t.text :challenges
      t.text :task
      t.string :resources
      t.string :text
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
