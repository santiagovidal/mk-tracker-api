require 'rails_helper'

describe 'GET api/v1/tracks/stats', type: :request do
  let(:subject) { get stats_api_v1_tracks_path, as: :json }
  let!(:track1) { create(:track) }
  let!(:track2) { create(:track) }
  let!(:track3) { create(:track) } # this one doesn't have first place results
  let!(:user1)  { create(:user) }
  let!(:user2)  { create(:user) }
  let!(:user3)  { create(:user) }
  let!(:user4)  { create(:user) }

  let!(:user_result1)  { create(:user_result, track: track1, user: user1, position: 1) }
  let!(:user_result2)  { create(:user_result, track: track1, user: user1, position: 2) }
  let!(:user_result3)  { create(:user_result, track: track1, user: user2, position: 1) }
  let!(:user_result4)  { create(:user_result, track: track1, user: user2, position: 1) }
  let!(:user_result5)  { create(:user_result, track: track1, user: user3, position: 1) }
  let!(:user_result6)  { create(:user_result, track: track1, user: user4, position: 9) }
  let!(:user_result7)  { create(:user_result, track: track2, user: user1, position: 5) }
  let!(:user_result8)  { create(:user_result, track: track2, user: user2, position: 1) }
  let!(:user_result9)  { create(:user_result, track: track2, user: user3, position: 3) }
  let!(:user_result10) { create(:user_result, track: track2, user: user4, position: 1) }
  let!(:user_result11) { create(:user_result, track: track3, user: user1, position: 5) }
  let!(:user_result12) { create(:user_result, track: track3, user: user2, position: 4) }
  let!(:user_result13) { create(:user_result, track: track3, user: user3, position: 3) }
  let!(:user_result14) { create(:user_result, track: track3, user: user4, position: 2) }

  it 'returns success' do
    subject
    expect(response).to have_http_status(:success)
  end

  it 'returns the correct stats' do
    subject

    expect(json[track1.id.to_s][user1.id.to_s]).to eq(1)
    expect(json[track1.id.to_s][user2.id.to_s]).to eq(2)
    expect(json[track1.id.to_s][user3.id.to_s]).to eq(1)
    expect(json[track1.id.to_s][user4.id.to_s]).to be_nil
    expect(json[track2.id.to_s][user1.id.to_s]).to be_nil
    expect(json[track2.id.to_s][user2.id.to_s]).to eq(1)
    expect(json[track2.id.to_s][user3.id.to_s]).to be_nil
    expect(json[track2.id.to_s][user4.id.to_s]).to eq(1)

    expect(json[track3.id.to_s][user1.id.to_s]).to be_nil
    expect(json[track3.id.to_s][user2.id.to_s]).to be_nil
    expect(json[track3.id.to_s][user3.id.to_s]).to be_nil
    expect(json[track3.id.to_s][user4.id.to_s]).to be_nil
  end
end
