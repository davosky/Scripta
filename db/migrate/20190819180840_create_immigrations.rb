class CreateImmigrations < ActiveRecord::Migration[5.2]
  def change
    create_table :immigrations do |t|
      t.integer :position
      t.string :name
      t.string :title
      t.text :content
      t.text :note
      t.date :creation_date
      t.date :revision_date

      t.timestamps
    end
  end
end
