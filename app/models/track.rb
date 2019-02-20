# == Schema Information
#
# Table name: tracks
#
#  id    :integer          not null, primary key
#  name  :string
#  image :string
#

class Track < ApplicationRecord
  has_many :user_results

  validates :name, presence: true

  scope :alphabetical, -> { order(name: :desc) }

  def wins_by_user
    user_results.inject({}) do |summary, user_result|
      summary[user_result.user_id] ||= 0
      summary[user_result.user_id] += 1 if user_result.position == 1
      summary
    end
  end
end
