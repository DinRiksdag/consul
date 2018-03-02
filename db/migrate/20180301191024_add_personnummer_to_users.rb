class AddPersonnummerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :personnummer, :integer, default: 0
  end
end
