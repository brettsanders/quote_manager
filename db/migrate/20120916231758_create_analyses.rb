class CreateAnalyses < ActiveRecord::Migration
  def change
    create_table :analyses do |t|
      t.text :text,   :null => false
      t.string :type, :null => false

      t.timestamps
    end
  end
end
