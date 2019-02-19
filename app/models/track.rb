# == Schema Information
#
# Table name: tracks
#
#  id    :integer          not null, primary key
#  name  :string
#  image :string
#

class Track < ApplicationRecord
  validate :name, presence: true
end
