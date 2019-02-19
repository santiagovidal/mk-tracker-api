require 'rails_helper'

describe 'GET api/v1/tracks', type: :request do
  let!(:tracks) { create_list(:track, 48) }

  it 'returns success' do
    get api_v1_tracks_path, as: :json
    # binding.pry
    expect(response).to have_http_status(:success)
  end

  # it 'returns user\'s data' do
  #   get api_v1_user_path(id: another_user.id), headers: auth_headers, as: :json

  #   expect(json[:user][:id]).to eq another_user.id
  #   expect(json[:user][:first_name]).to eq another_user.first_name
  # end
end
