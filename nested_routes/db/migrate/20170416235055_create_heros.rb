class CreateHeros < ActiveRecord::Migration[5.0]
  def change
    create_table :heros do |t|
      t.references :universe, foreign_key: true
      t.string :name
      t.string :parent
      t.string :child
      t.text :attribute
      t.text :description
      t.boolean :is_approved
      t.boolean :is_cannon
      t.integer :up_vote

      t.timestamps
    end
  end
end
