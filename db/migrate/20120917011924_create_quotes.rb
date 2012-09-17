class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :text
      t.integer :page

      t.timestamps
    end
  end
end
