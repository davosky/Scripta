class CreateAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments do |t|
      t.string :name
      t.date :publication_date
      t.references :assistance, foreign_key: true
      t.references :health, foreign_key: true
      t.references :immigration, foreign_key: true
      t.references :pension, foreign_key: true

      t.timestamps
    end
  end
end
