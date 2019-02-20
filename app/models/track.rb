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

  scope :alphabetical, -> { order(name: :asc) }
end
