# == Schema Information
#
# Table name: tracks
#
#  id    :integer          not null, primary key
#  name  :string
#  image :string
#

FactoryBot.define do
  factory :track do
    name { Faker::Name.name }
  end
end
