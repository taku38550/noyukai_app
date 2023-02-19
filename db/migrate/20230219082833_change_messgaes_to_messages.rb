class ChangeMessgaesToMessages < ActiveRecord::Migration[6.0]
  def change
    rename_table :messgaes, :messages
  end
end
