class CreateGods < ActiveRecord::Migration[5.0]
  def change
    create_table :gods do |t|
      t.references :mythos, foreign_key: true
      t.string :title
      t.string :parent
      t.string :children
      t.text :attributes
      t.text :description
      t.boolean :is_approved
      t.boolean :is_cannon
      t.integer :up_vote

      t.timestamps
    end
  end
end
