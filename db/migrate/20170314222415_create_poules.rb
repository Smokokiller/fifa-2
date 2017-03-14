class CreatePoules < ActiveRecord::Migration
  def change
    create_table :poules do |t|
      t.string :name
      t.belongs_to :tournament, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
