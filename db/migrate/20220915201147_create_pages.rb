class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.integer :chapter
      t.integer :pageNumber
      t.text :content

      t.timestamps
    end
  end
end
