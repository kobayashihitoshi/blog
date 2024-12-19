class AddImgToDocuments < ActiveRecord::Migration[6.1]
  def change
    add_column :documents, :img, :string
  end
end
