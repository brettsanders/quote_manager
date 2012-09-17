class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text    :text,  null: false
      t.integer :page,  null: false

      t.timestamps
    end
  end
end
