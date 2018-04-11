class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.integer :date
      t.string :tags

      t.timestamps
    end
  end
end
