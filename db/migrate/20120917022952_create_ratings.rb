class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :title
      t.integer :position

      t.timestamps
    end
  end
end
