class Video
    attr_reader :title, :description, :url, :thumbnail_url
  
    def initialize(title, description, url, thumbnail_url)
      @title = title
      @description = description
      @url = url
      @thumbnail_url = thumbnail_url
    end
  
    def play
      # TODO: Play the video.
    end
  
    def pause
      # TODO: Pause the video.
    end
  
    def stop
      # TODO: Stop the video.
    end
  
    def seek(to_time)
      # TODO: Seek to a specific time in the video.
    end
  
    def get_current_time
      # TODO: Get the current time in the video.
    end
  
    def get_duration
      # TODO: Get the duration of the video.
    end
  
    def is_playing?
      # TODO: Check if the video is playing.
    end
  
    def is_paused?
      # TODO: Check if the video is paused.
    end
  
    def is_stopped?
      # TODO: Check if the video is stopped.
    end
  
    def get_volume
      # TODO: Get the volume of the video.
    end
  
    def set_volume(volume)
      # TODO: Set the volume of the video.
    end
  
    def get_mute_status
      # TODO: Get the mute status of the video.
    end
  
    def mute
      # TODO: Mute the video.
    end
  
    def unmute
      # TODO: Unmute the video.
    end
  end