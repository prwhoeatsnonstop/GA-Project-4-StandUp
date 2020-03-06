class RemoveTextFromBoards < ActiveRecord::Migration[6.0]
  def change
    remove_column :boards, :text, :string
  end
end