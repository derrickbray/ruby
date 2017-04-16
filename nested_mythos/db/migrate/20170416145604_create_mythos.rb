class CreateMythos < ActiveRecord::Migration[5.0]
  def change
    create_table :mythos do |t|
      t.string :title
      t.text :discription

      t.timestamps
    end
  end
end
