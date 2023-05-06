class VideoValidator

    def initialize(video)
      @video = video
    end
  
    def validate
      errors = []
  
      # Check if the video file exists.
      if !File.exist?(@video.path)
        errors << "The video file does not exist."
      end
  
      # Check if the video file is a valid video file.
      if !@video.content_type.start_with?('video/')
        errors << "The video file is not a valid video file."
      end
  
      # Check if the video file is too large.
      if @video.size > 100_000_000
        errors << "The video file is too large."
      end
  
      return errors
    end
  end