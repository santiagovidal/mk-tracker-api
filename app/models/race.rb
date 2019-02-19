# == Schema Information
#
# Table name: races
#
#  id              :integer          not null, primary key
#  championship_id :integer
#  track_id        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_races_on_championship_id  (championship_id)
#  index_races_on_track_id         (track_id)
#

class Race < ApplicationRecord

end
