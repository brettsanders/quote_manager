class AddQuoteIdToAnalyses < ActiveRecord::Migration
  def change
    add_column :analyses, :quote_id, :integer
  end
end
