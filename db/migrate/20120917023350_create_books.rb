class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string  :title,       null: false
      t.string  :author,      null: false
      t.string  :link,        null: false
      t.integer :quote_id,    null: false
      t.integer :analysis_id, null: false
      t.integer :rating_id,   null: false, default: 1

      t.timestamps
    end
  end
end
