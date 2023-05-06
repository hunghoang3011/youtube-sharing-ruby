require 'rails_helper'

RSpec.describe 'Videos', type: :request do
  describe 'GET /videos' do
    it 'returns a list of videos' do
      # Create some videos
      videos = FactoryBot.create_list(:video, 3)

      # Get the videos
      get '/videos'

      # Check that the response is successful
      expect(response).to be_successful

      # Check that the response body contains the list of videos
      expect(response.body).to eq(videos.to_json)
    end
  end

  describe 'GET /videos/:id' do
    it 'returns a single video' do
      # Create a video
      video = FactoryBot.create(:video)

      # Get the video
      get "/videos/#{video.id}"

      # Check that the response is successful
      expect(response).to be_successful

      # Check that the response body contains the video
      expect(response.body).to eq(video.to_json)
    end
  end

  describe 'POST /videos' do
    it 'creates a new video' do
      # Create the video params
      video_params = FactoryBot.attributes_for(:video)

      # Post the video
      post '/videos', params: { video: video_params }

      # Check that the response is successful
      expect(response).to be_successful

      # Check that the video was created
      expect(Video.count).to eq(1)

      # Check that the video has the correct attributes
      video = Video.last
      expect(video.title).to eq(video_params[:title])
      expect(video.url).to eq(video_params[:url])
    end
  end

  describe 'PUT /videos/:id' do
    it 'updates an existing video' do
      # Create a video
      video = FactoryBot.create(:video)

      # Update the video params
      new_video_params = FactoryBot.attributes_for(:video, title: 'New Title')

      # Put the video
      put "/videos/#{video.id}", params: { video: new_video_params }

      # Check that the response is successful
      expect(response).to be_successful

      # Check that the video was updated
      video.reload
      expect(video.title).to eq('New Title')
    end
  end

  describe 'DELETE /videos/:id' do
    it 'deletes an existing video' do
      # Create a video
      video = FactoryBot.create(:video)

      # Delete the video
      delete "/videos/#{video.id}"

      # Check that the response is successful
      expect(response).to be_successful

      # Check that the video was deleted
      expect(Video.count).to eq(0)
    end
  end
end