class NotifyNewVideoJob < ApplicationJob

    def perform(video)
      # Send a notification to all users who have subscribed to the video's channel.
      users = User.where(channel_id: video.channel_id)
      users.each do |user|
        UserMailer.notify_new_video(user, video).deliver_now
      end
    end
  
  end