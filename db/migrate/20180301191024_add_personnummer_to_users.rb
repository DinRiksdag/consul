class AddPersonnummerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :personnummer, :text
  end
end
