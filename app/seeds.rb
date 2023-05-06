# This file is used to seed the database with some initial data.

# Create a user.
user = User.create!(name: "John Doe", email: "johndoe@example.com", password: "password")

# Create some videos.
video1 = Video.create!(title: "My First Video", description: "This is my first video.", video_file_name: "my_first_video.mp4", video_content_type: "video/mp4", video_file_size: 100_000_000, user_id: user.id)
video2 = Video.create!(title: "My Second Video", description: "This is my second video.", video_file_name: "my_second_video.mp4", video_content_type: "video/mp4", video_file_size: 200_000_000, user_id: user.id)
video3 = Video.create!(title: "My Third Video", description: "This is my third video.", video_file_name: "my_third_video.mp4", video_content_type: "video/mp4", video_file_size: 300_000_000, user_id: user.id)

# Save the changes to the database.
ActiveRecord::Base.connection.commit!