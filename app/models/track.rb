# == Schema Information
#
# Table name: tracks
#
#  id    :integer          not null, primary key
#  name  :string
#  image :string
#

class Track < ApplicationRecord
  validates :name, presence: true

  scope :alphabetical, -> { order(name: :desc) }
end
