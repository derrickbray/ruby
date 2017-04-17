class CreateMyths < ActiveRecord::Migration[5.0]
  def change
    create_table :myths do |t|
      t.references :universe, foreign_key: true
      t.string :title
      t.string :author
      t.string :charactors
      t.text :description
      t.text :body
      t.boolean :is_approved
      t.boolean :is_cannon
      t.integer :up_vote


      t.timestamps
    end
  end
end
