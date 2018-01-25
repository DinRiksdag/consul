class IndexCommentsValuationColumn < ActiveRecord::Migration
  disable_ddl_transaction!

  def change
    add_index :comments, :valuation, algorithm: :concurrently
  end
end
