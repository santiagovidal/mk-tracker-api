require 'rails_helper'

describe 'POST api/v1/championships', type: :request do
  let!(:track1) { create(:track) }
  let!(:track2) { create(:track) }
  let!(:user1)  { create(:user) }
  let!(:user2)  { create(:user) }
  let!(:user3)  { create(:user) }
  let!(:user4)  { create(:user) }

  let(:params) do
    {
      user_results_attributes: [
        { user_id: user1.id, track_id: track1.id, position: 2 },
        { user_id: user2.id, track_id: track1.id, position: 4 },
        { user_id: user3.id, track_id: track1.id, position: 3 },
        { user_id: user4.id, track_id: track1.id, position: 1 },
        { user_id: user1.id, track_id: track2.id, position: 1 },
        { user_id: user2.id, track_id: track2.id, position: 3 },
        { user_id: user3.id, track_id: track2.id, position: 4 },
        { user_id: user4.id, track_id: track2.id, position: 2 },
      ]
    }
  end
  let(:subject) { post api_v1_championships_path, params: params, as: :json }

  it 'returns success' do
    subject
    expect(response).to have_http_status(:no_content)
  end

  it 'creates a new championship' do
    expect do
      subject
    end.to change(Championship, :count).by(1)
  end

  it 'creates new user result records' do
    expect do
      subject
    end.to change(UserResult, :count).by(8)
  end
end
