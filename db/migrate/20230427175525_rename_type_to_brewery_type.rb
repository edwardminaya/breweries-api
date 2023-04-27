class RenameTypeToBreweryType < ActiveRecord::Migration[7.0]
  def change
    rename_column :breweries, :type, :brewery_type
  end
end
