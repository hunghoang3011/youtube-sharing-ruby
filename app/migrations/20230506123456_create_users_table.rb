# This file is used to create the users table in the database.

# Create the users table.
ActiveRecord::Schema.define(version: 20230506123456) do
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end