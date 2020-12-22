class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    enable_extension "pgcrypto"
    create_table :users, id: :uuid do |t|
      t.string :display_name
      t.string :user_id, null: false
      t.string :email

      t.timestamps
    end
  end
end
