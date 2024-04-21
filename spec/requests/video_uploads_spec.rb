# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'video_uploads', type: :request do
  it 'returns a list of video uploads' do
    get '/video_uploads'
    expect(response).to have_http_status(:ok)
  end
end
