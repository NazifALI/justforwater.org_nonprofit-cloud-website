class CreateApplicationSponsors < ActiveRecord::Migration[5.0]
  def change
    create_table :application_sponsors do |t|
      t.string :name
      t.text :description
      t.string :image_id

      t.timestamps
    end
  end
end
