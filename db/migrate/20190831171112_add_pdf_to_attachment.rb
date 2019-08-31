class AddPdfToAttachment < ActiveRecord::Migration[5.2]
  def change
    add_column :attachments, :pdf, :string
  end
end
