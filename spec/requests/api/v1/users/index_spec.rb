require 'rails_helper'

describe 'GET api/v1/users', type: :request do
  let(:subject) { get api_v1_users_path, as: :json }
  let!(:users) { create_list(:user, 4) }

  it 'returns success' do
    subject
    expect(response).to have_http_status(:success)
  end

  it 'returns users data' do
    subject
    expect(json[:users].map { |user| user[:id] }).to match_array(users.map(&:id))
    expect(json[:users].size).to eq(4)
  end
end
