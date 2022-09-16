class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.integer :chapter
      t.integer :page_number
      t.text :content

      t.timestamps
    end
  end
end
