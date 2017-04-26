class CreateApplicationContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :application_contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :description

      t.timestamps
    end
  end
end
