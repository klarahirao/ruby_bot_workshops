class AddPsidToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :psid, :string
  end
end
