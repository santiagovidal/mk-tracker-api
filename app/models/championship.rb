# == Schema Information
#
# Table name: championships
#
#  id          :integer          not null, primary key
#  races_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Championship < ApplicationRecord
  has_many :user_results
end
