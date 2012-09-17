class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :link
      t.integer :quote_id
      t.integer :analysis_id
      t.integer :rating_id

      t.timestamps
    end
  end
end
