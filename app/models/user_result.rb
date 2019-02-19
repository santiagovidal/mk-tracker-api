# == Schema Information
#
# Table name: user_results
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  track_id        :integer
#  championship_id :integer
#  position        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_user_results_on_championship_id  (championship_id)
#  index_user_results_on_track_id         (track_id)
#  index_user_results_on_user_id          (user_id)
#

class UserResult < ApplicationRecord
  belongs_to :user
  belongs_to :track
  belongs_to :championship

  validate :position, presence: true
end
