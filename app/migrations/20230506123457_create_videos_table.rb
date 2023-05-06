# This file is used to create the videos table in the database.

# Create the videos table.
ActiveRecord::Schema.define(version: 20230506123457) do
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.string :video_file_name
      t.string :video_content_type
      t.integer :video_file_size
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :user_id
    end
  end