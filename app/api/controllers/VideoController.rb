class VideoController < ApplicationController
    # GET /videos
    def index
      @videos = Video.all
    end
  
    # GET /videos/new
    def new
      @video = Video.new
    end
  
    # POST /videos
    def create
      @video = Video.new(video_params)
  
      if @video.save
        redirect_to @video, notice: 'Video was successfully created.'
      else
        render :new
      end
    end
  
    # GET /videos/:id
    def show
      @video = Video.find(params[:id])
    end
  
    # PATCH /videos/:id
    def update
      @video = Video.find(params[:id])
  
      if @video.update(video_params)
        redirect_to @video, notice: 'Video was successfully updated.'
      else
        render :edit
      end
    end
  
    # DELETE /videos/:id
    def destroy
      @video = Video.find(params[:id])
      @video.destroy
  
      redirect_to videos_url, notice: 'Video was successfully destroyed.'
    end
  
    private
  
    # Only allow a trusted parameter "whitelist" through.
    def video_params
      params.require(:video).permit(:title, :description, :video_url, :user_id)
    end
  end