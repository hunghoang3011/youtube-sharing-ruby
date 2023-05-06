class Channel < ActionCable::Channel::Base

    def subscribed
      # Called when the user subscribes to the channel.
    end
  
    def unsubscribed
      # Called when the user unsubscribes from the channel.
    end
  
    def receive(data)
      # Called when the user receives a message from the server.
    end
  
    def broadcast(video)
      # Called when the server needs to broadcast a message to all subscribers.
      # Publishes the video title to all subscribers.
      broadcast_to :all, video.title
    end
  
  end