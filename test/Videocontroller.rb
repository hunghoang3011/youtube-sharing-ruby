require 'rails_helper'

RSpec.describe VideosController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  before { sign_in(user) }

  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'assigns all videos to @videos' do
      videos = FactoryBot.create_list(:video, 3)
      get :index
      expect(assigns(:videos)).to eq(videos)
    end
  end

  describe 'GET #show' do
    let(:video) { FactoryBot.create(:video) }

    it 'returns a success response' do
      get :show, params: { id: video.id }
      expect(response).to be_successful
    end

    it 'renders the show template' do
      get :show, params: { id: video.id }
      expect(response).to render_template('show')
    end

    it 'assigns the requested video to @video' do
      get :show, params: { id: video.id }
      expect(assigns(:video)).to eq(video)
    end
  end

  describe 'POST #create' do
    let(:video_params) { FactoryBot.attributes_for(:video) }

    context 'with valid params' do
      it 'creates a new video' do
        expect { post :create, params: { video: video_params } }.to change(Video, :count).by(1)
      end

      it 'redirects to the video show page' do
        post :create, params: { video: video_params }
        expect(response).to redirect_to video_path(Video.last)
      end
    end

    context 'with invalid params' do
      it 'does not create a new video' do
        video_params[:title] = ''
        expect { post :create, params: { video: video_params } }.to change(Video, :count).by(0)
      end

      it 'renders the new template' do
        video_params[:title] = ''
        post :create, params: { video: video_params }
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    let(:video) { FactoryBot.create(:video) }
    let(:new_video_params) { FactoryBot.attributes_for(:video, title: 'New Title') }

    context 'with valid params' do
      it 'updates the requested video' do
        put :update, params: { id: video.id, video: new_video_params }
        video.reload
        expect(video.title).to eq('New Title')
      end

      it 'redirects to the video show page' do
        put :update, params: { id: video.id, video: new_video_params }
        expect(response).to redirect_to video_path(video)
      end
    end

    context 'with invalid params' do
      it 'does not update the video' do
        new_video_params[:title] = ''
        put :update, params: { id: video.id, video: new_video_params }
        video.reload
        expect(video.title).not_to eq('New Title')
      end

      it 'renders the edit template' do
        new_video_params[:title] = ''
        put :update, params: { id: video.id, video: new_video_params }
        expect(response).