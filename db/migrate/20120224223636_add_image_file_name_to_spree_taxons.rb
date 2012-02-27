class AddImageFileNameToSpreeTaxons < ActiveRecord::Migration
  def change
    add_column :spree_taxons, :image_file_name, :string
  end
end
