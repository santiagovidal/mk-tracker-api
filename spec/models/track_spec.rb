require 'rails_helper'

describe Track do
  subject { create(:track) }

  describe '#wins_by_user' do
    let!(:user1)  { create(:user) }
    let!(:user2)  { create(:user) }
    let!(:user3)  { create(:user) }
    let!(:user4)  { create(:user) }

    let!(:user_result1) { create(:user_result, track: subject, user: user1, position: 1) }
    let!(:user_result2) { create(:user_result, track: subject, user: user1, position: 2) }
    let!(:user_result3) { create(:user_result, track: subject, user: user2, position: 1) }
    let!(:user_result4) { create(:user_result, track: subject, user: user2, position: 1) }
    let!(:user_result5) { create(:user_result, track: subject, user: user3, position: 1) }
    let!(:user_result6) { create(:user_result, track: subject, user: user4, position: 9) }

    it 'returns the correct summary' do
      result = subject.wins_by_user

      expect(result[user1.id]).to eq(1)
      expect(result[user2.id]).to eq(2)
      expect(result[user3.id]).to eq(1)
      expect(result[user4.id]).to eq(0)
    end
  end
end
