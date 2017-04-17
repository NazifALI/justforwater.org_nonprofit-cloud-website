class AddIconToApplicationSponsors < ActiveRecord::Migration[5.0]
  def change
    add_column :application_sponsors, :icon, :string
  end
end
