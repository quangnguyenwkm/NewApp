class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles, id: :uuid do |t|
      t.string :full_name
      t.string :phone_number
      t.references :user, type: :uuid

      t.timestamps
    end
  end
end
