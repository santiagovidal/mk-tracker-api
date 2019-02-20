require 'rails_helper'

describe 'GET api/v1/tracks', type: :request do
  let(:subject) { get api_v1_tracks_path, as: :json }
  let!(:tracks) { create_list(:track, 48) }

  it 'returns success' do
    subject
    expect(response).to have_http_status(:success)
  end

  it 'returns tracks data' do
    subject
    expect(json[:tracks].map { |track| track[:id] }).to match_array(tracks.map(&:id))
    expect(json[:tracks].size).to eq(48)
  end
end
