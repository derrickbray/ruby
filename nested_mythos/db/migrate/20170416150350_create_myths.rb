class CreateMyths < ActiveRecord::Migration[5.0]
  def change
    create_table :myths do |t|
      t.references :mythos, foreign_key: true
      t.string :title
      t.string :author
      t.integer :year_started
      t.text :description
      t.text :body
      t.boolean :is_approved
      t.boolean :is_cannon
      t.integer :up_vote

      t.timestamps
    end
  end
end
