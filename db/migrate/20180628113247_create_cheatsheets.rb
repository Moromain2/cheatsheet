class CreateCheatsheets < ActiveRecord::Migration[5.2]
  def change
    create_table :cheatsheets do |t|
      t.string :category
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
