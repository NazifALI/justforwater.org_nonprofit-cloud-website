class ChangeDescriptionAttributeType < ActiveRecord::Migration[5.0]
  def change
    change_column :application_contacts, :description, :text
  end
end
