class AddIconFilenameToSponsors < ActiveRecord::Migration[5.0]
  def change
    add_column :sponsors, :icon_filename, :string
  end
end
